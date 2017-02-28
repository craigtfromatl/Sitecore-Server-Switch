# Sitecore Server Switch
Powershell Scripts to allow switching between CM and CD servers and between Lucene and Solr.  Files to switch are based on Sitecore's <a href="http://doc.sitecore.net" target="_blank">official documentation</a>.

## What's in the Box?
* ```Sitecore_Switch_CM_CD_Lucene_Solr.ps1``` script - Base script that swaps files for use in different server configurations.

* ```includes``` Folder - Separate Powershell files that contains the file differences for different versions of Sitecore.  See [Supported Sitecore Versions](#supported-sitecore-versions) for details.

## How to Use this Module

### Prerequisites
1. Sitecore has already been installed.  This script works best on a 'vanilla' instance of Sitecore.  After the base install is complete, run this script to configure the server as a 'CM' or 'CD' server. (and to use Lucene or Solr)

2. Ensure that you have the permissions set on the ```Website``` folder to allow modifications to the files.  Failing to set permissions will result in "access is denied" errors.

### Running the Script
Run the ```Sitecore_Switch_CM_CD_Lucene_Solr.ps1``` Powershell script in Powershell or Powershell ISE.  There are four parameters that are required:

1. **Sitecore version**.  Specify the version of Sitecore that you are working with:

  ```
  Which version of Sitecore? 8.0 [1] | 8.2 rev 161221 (Update 2) [2]
  ```
  *Specify the number of the option you are using. In this example, "1" or "2"*

2. **Folder path**.  Specify the path to your "Website" folder of your Sitecore instance.

  ```
  Folder path the Sitecore instance \Website? (Ex: "D:\Sitecore\Dev-CD-SC8\Website\")
  ```
3. **Server type**.  Specify if you are configuring a CM or CD server.

  ```
  Configure server to be [CM] or [CD]?
  ```
  *In this example, "CM" or "CD"*

4. **Indexing technology**.

  ```
  Lucene [L] or Solr [S]?
  ```
  *In this example, "L" or "S"*
  
### Notes
* Run the script and pay attention to the output.  The script will inform you of all the files that were modified or not modified.  

* No attempt has been made to create any patch include files here.  After running this script, you will still need to create your patch include files to modify any values in these files as required. (changing data folder location, setting Solr server, connection strings, etc)

* No attempt has been made to harden the CD server.  Please see <a href="http://doc.sitecore.net" target="_blank">Sitecore documentation</a> for how to secure your CD server(s).

## Troubleshooting
* While attempting to run the script, you may encounter an error that states ```.\Sitecore_Switch_CM_CD_Lucene_Solr.ps1 : File C:\<Your File Path>\Sitecore_Switch_CM_CD_Lucene_Solr.ps1 cannot be loaded.  The file C:\<Your File Path>\Sitecore_Switch_CM_CD_Lucene_Solr.ps1 is not digitally signed.  YOu cannot run this script on the current system.  For more information about running scripts and setting execution policy, see about_Execution_Policies at http://go.microsoft.com/fwlink/?LinkID=135170.```

  To solve this issue, look at the properties of the ```Sitecore_Switch_CM_CD_Lucene_Solr.ps1``` file (and all corresponding PowerShell scripts in the ```includes``` folder) and "Unblock" it.

## Supported Sitecore Versions
*More versions coming*

### Sitecore 8.2
* Sitecore Experience Platform 8.2 rev. 161221 (8.2 Update-2)

### Sitecore 8.0
* Sitecore Experience Platform 8.0 rev. 151127 (8.0 Update-6)
* Sitecore Experience Platform 8.0 rev. 150812 (8.0 Update-5)
* Sitecore Experience Platform 8.0 rev. 150621 (8.0 Update-4)
* Sitecore Experience Platform 8.0 rev. 150427 (8.0 Update-3)
* Sitecore Experience Platform 8.0 rev. 150223 (8.0 Update-2)
* Sitecore Experience Platform 8.0 rev. 150121 (8.0 Update-1)
* Sitecore Experience Platform 8.0 rev. 141212 (8.0 Initial Release)

## Authors
* Craig Taylor - <a href="https://twitter.com/craigtfromatl" target="_blank">@craigtfromatl</a>

  <a href="https://www.craigtaylor.us" target="_blank">Craig on Sitecore</a>

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Acknowledgments
* Sarkis Einarsson - I used Sarkis' script (with permission) as a base for mine and extended to allow for additional versions <a href="http://sitecoreunleashed.blogspot.com/2015/09/sitecore-8-toggle-cd-configuration.html" target="_blank">http://sitecoreunleashed.blogspot.com/2015/09/sitecore-8-toggle-cd-configuration.html</a>
