# After installing Sitecore, switch the server from a CM to a CD, a CD to a CM, Lucene to Solr or Solr to Lucene.
# @craigtfromatl

$sitecoreSelection = Read-Host -Prompt 'Which version of Sitecore? 8.0 [1] | 8.2 rev 161221 (Update 2) [2]'
$webrootPath = Read-Host -Prompt 'Folder path the Sitecore instance \Website? (Ex: "D:\Sitecore\Dev-CD-SC8\Website\")'
$Command = Read-Host -Prompt 'Configure server to be [CM] or [CD]?'
$IndexType = Read-Host -Prompt 'Lucene [L] or Solr [S]?'

switch ($sitecoreSelection)
{
    1 {
        . .\Includes\8.0.ps1
        [string]$sitecoreVersion = "8.0"
    }
    
    2 {
        . .\Includes\8.2rev161221.ps1
        [string]$sitecoreVersion = "8.2rev161221"
    }
}

ConfigureServer


function ConfigureServer()
{
    Write-Host " "
    Write-Host "#############################################"
    Write-Host "Configuring as $Command server." -foregroundcolor red 
    Write-Host "#############################################"
    
	# enable proper files
    [string]$funcName = $sitecoreVersion + "_Get-FilesToEnableOn" + $Command + "Server"
    $sb = (Get-Command $funcName -CommandType Function).ScriptBlock 
	$filesToEnable = Invoke-Command -scriptblock $sb
    Write-Host " "
    Write-Host "#############################################"
	Write-Host "Enabling $Command files required for a $Command server." -foregroundcolor red 
    Write-Host "#############################################"
	EnableFiles $filesToEnable
	
	# disable proper files
    [string]$funcName = $sitecoreVersion + "_Get-FilesToDisableOn" + $Command + "Server"
    $sb = (Get-Command $funcName -CommandType Function).ScriptBlock 
	$filesToDisable = Invoke-Command -scriptblock $sb
    Write-Host " "
    Write-Host "#############################################"
	Write-Host "Disabling $Command files not required for a $Command server." -foregroundcolor red 
    Write-Host "#############################################"
	DisableFiles $filesToDisable
	
	# Configure indexing
	if ($IndexType -like 'L')
	{
		$indexName = "Lucene"
		[string]$baseIndexFilesToDisable = $sitecoreVersion + "_Get-AllSolrFiles"
        [string]$indexFilesToEnable = $sitecoreVersion + "_Get-LuceneFilesToEnableOn" + $Command + "Server"
        [string]$indexFilesToDisable = $sitecoreVersion + "_Get-LuceneFilesToDisableOn" + $Command + "Server"
	}
	else 
	{
		$indexName = "Solr"
		[string]$baseIndexFilesToDisable = $sitecoreVersion + "_Get-AllLuceneFiles"
        [string]$indexFilesToEnable = $sitecoreVersion + "_Get-SolrFilesToEnableOn" + $Command + "Server"
        [string]$indexFilesToDisable = $sitecoreVersion + "_Get-SolrFilesToDisableOn" + $Command + "Server"
	}
	
    Write-Host " "
    Write-Host "#############################################"
    Write-Host "Configure indexing to use $indexName." -foregroundcolor red 
    Write-Host "#############################################"

    Write-Host " "
    Write-Host "#############################################"
    Write-Host "Disabling all non-$indexName index files." -foregroundcolor red 
    Write-Host "#############################################"
    $sb = (Get-Command $baseIndexFilesToDisable -CommandType Function).ScriptBlock 
	$filesToDisable = Invoke-Command -scriptblock $sb	
    DisableFiles $filesToDisable
	
    Write-Host " "
	Write-Host "#############################################"
    Write-Host "Enabling files needed for $indexName on $Command." -foregroundcolor red 
    Write-Host "#############################################"
    $sb = (Get-Command $indexFilesToEnable -CommandType Function).ScriptBlock 
	$filesToEnable = Invoke-Command -scriptblock $sb
	EnableFiles $filesToEnable
	
    Write-Host " "
	Write-Host "#############################################"
    Write-Host "Disabling files not needed for $indexName on $Command." -foregroundcolor red 
    Write-Host "#############################################"
    $sb = (Get-Command $indexFilesToDisable -CommandType Function).ScriptBlock 
	$filesToDisable = Invoke-Command -scriptblock $sb	
    DisableFiles $filesToDisable
	
    Write-Host " "
	Write-Host "#############################################"
    Write-Host "Server now configured as a $Command server using $indexName." -foregroundcolor red
    Write-Host "#############################################"
}

function DisableFiles($filesToDisable)
{
    foreach($file in $filesToDisable)
    {
        # Check to see if file exists
		if (Test-Path $file)
        {
            $fileName = Split-Path $file -leaf
            $newName = $fileName + ".disabled"
			
			$newFilePath = $file + ".disabled"
			if (Test-Path $newFilePath)
			{
				Remove-Item $newFilePath
				Write-Host "Deleted existing .disabled for: " $fileName -foregroundcolor white
			}
			
            Rename-Item -Path $file -NewName $newName
            Write-Host "Disabled $file" -foregroundcolor white 
        }
        else
        {
            Write-Host "$file not found on server.  No need to disable." -foregroundcolor white
        }
    }
}

function EnableFiles($filesToEnable)
{
    foreach($file in $filesToEnable)
    {
        # Check to see if file exists
		if (-Not(Test-Path $file))
        {
			# .config didn't exist, check for .disabled
            $fileNameDisabled = "$file.disabled"
			
			if(Test-Path $fileNameDisabled)
			{
				$existingName = $fileNameDisabled
			}
			else
			{
				# .config didn't exist, check for .example
				$fileNameExample = "$file.example"
				if(Test-Path $fileNameExample)
				{
					$existingName = $fileNameExample
				}
				else
				{
					Write-Host "Could not find $file, $fileNameDisabled or $fileNameExample.  Cound not enable." -foregroundcolor red
					return
				}
			}
			
			Rename-Item -Path $existingName -NewName $file
			Write-Host "Enabled: $file" -foregroundcolor white 
        }
        else
        {
            Write-Host "$file already enabled." -foregroundcolor white
        }
    }
}
