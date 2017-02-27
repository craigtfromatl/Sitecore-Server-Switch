# Functions that contain all the config files for Sitecore Experience Platform 8.0
# Works for the following versions
# Sitecore Experience Platform 8.0 rev. 151127 (8.0 Update-6)
# Sitecore Experience Platform 8.0 rev. 150812 (8.0 Update-5)
# Sitecore Experience Platform 8.0 rev. 150621 (8.0 Update-4)
# Sitecore Experience Platform 8.0 rev. 150427 (8.0 Update-3)
# Sitecore Experience Platform 8.0 rev. 150223 (8.0 Update-2)
# Sitecore Experience Platform 8.0 rev. 150121 (8.0 Update-1)
# Sitecore Experience Platform 8.0 rev. 141212 (8.0 Initial Release)
# @craigtfromatl

function 8.0_Get-AllLuceneFiles()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Lucene.DefaultIndexConfiguration.config",
               "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Analytics.config",
               "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Core.config",
               "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Master.config",
               "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Web.config",
               "App_Config\Include\Sitecore.ContentSearch.Lucene.Indexes.Sharded.Core.config",
               "App_Config\Include\Sitecore.ContentSearch.Lucene.Indexes.Sharded.Master.config",
               "App_Config\Include\Sitecore.ContentSearch.Lucene.Indexes.Sharded.Web.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.Index.Master.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.Index.Web.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.IndexConfiguration.config",
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Lucene.IndexConfiguration.config",
               "App_Config\Include\FXM\Sitecore.FXM.Lucene.Index.DomainsSearch.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.Index.List.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.IndexConfiguration.config",
               "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Master.config",
               "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Web.config",
               "App_Config\Include\Social\Sitecore.Social.Lucene.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-AllSolrFiles()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.config",
               "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Analytics.config",
               "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Core.config",
               "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Master.config",
               "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Web.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.Index.Master.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.Index.Web.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.IndexConfiguration.config",            
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Solr.IndexConfiguration.config",
               "App_Config\Include\FXM\Sitecore.FXM.Solr.DomainsSearch.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.Index.List.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.IndexConfiguration.config",
               "App_Config\Include\Social\Sitecore.Social.Solr.Index.Master.config",
               "App_Config\Include\Social\Sitecore.Social.Solr.Index.Web.config",
               "App_Config\Include\Social\Sitecore.Social.Solr.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-FilesToDisableOnCDServer()
{
    $files = @("App_Config\Include\Sitecore.Analytics.Automation.TimeoutProcessing.config",
               "App_Config\Include\Sitecore.Analytics.Processing.Aggregation.Services.config",
               "App_Config\Include\Sitecore.Analytics.Processing.Services.config",
               "App_Config\Include\Sitecore.Analytics.Reporting.config",
               "App_Config\Include\Sitecore.Marketing.Client.config",
               "App_Config\Include\Sitecore.Processing.config",
               "App_Config\Include\Sitecore.WebDAV.config",
               "App_Config\Include\Sitecore.ExperienceEditor.Speak.Requests.config",
               "App_Config\Include\Sitecore.ExperienceExplorer.Speak.Requests.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Client.config",
               "App_Config\Include\Sitecore.PathAnalyzer.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Processing.config",
			   "App_Config\Include\Sitecore.PathAnalyzer.RemoteClient.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Services.config",
               "App_Config\Include\Sitecore.PathAnalyzer.StorageProviders.config",
               "bin\Sitecore.PathAnalyzer.dll",
               "bin\Sitecore.PathAnalyzer.Client.dll",
               "bin\Sitecore.PathAnalyzer.Services.dll",
               "bin\Sitecore.SequenceAnalyzer.dll",
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Processing.Aggregation.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Aggregation.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Client.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Reduce.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.StorageProviders.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.WebAPI.config",
               "bin\Sitecore.ExperienceAnalytics.dll",
               "bin\Sitecore.ExperienceAnalytics.Client.dll",
               "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.config",
               "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.Client.config",
               "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.Reporting.config",
               "App_Config\Include\FXM\Sitecore.FXM.Speak.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Client.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Services.config",
               "App_Config\Include\Social\Sitecore.Social.ExperienceProfile.config",
               "App_Config\Include\.Sitecore.Speak.Important.config",
               "App_Config\Include\Sitecore.Speak.AntiCsrf.SheerUI.config",
               "App_Config\Include\Sitecore.Speak.Applications.config",
               "App_Config\Include\Sitecore.Speak.config",
               "App_Config\Include\Sitecore.Speak.ItemWebApi.config",
               "App_Config\Include\Sitecore.Speak.LaunchPad.config",
               "App_Config\Include\Sitecore.Speak.Mvc.config",
			   "App_Config\Include\Sitecore.Xdb.Remote.Client.config",
			   "App_Config\Include\Social\Sitecore.Social.ScalabilitySettings.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-FilesToDisableOnCMServer()
{
    $files = @("App_Config\Include\Sitecore.Analytics.Processing.Aggregation.Services.config",
               "App_Config\Include\Sitecore.Analytics.Processing.Services.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.Aggregation.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.Database.config",
               "App_Config\Include\Sitecore.Analytics.ExcludeRobots.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.RobotDetection.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Processing.config",
               "App_Config\Include\Sitecore.PathAnalyzer.StorageProviders.config",
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Processing.Aggregation.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Aggregation.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Reduce.config",
			   "App_Config\Include\SwitchMasterToWeb.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-FilesToEnableOnCDServer()
{
    $files = @("App_Config\Include\ScalabilitySettings.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.Aggregation.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.Database.config",
               "App_Config\Include\Sitecore.Analytics.ExcludeRobots.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.RobotDetection.config",
			   "App_Config\Include\SwitchMasterToWeb.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-FilesToEnableOnCMServer()
{
    $files = @("App_Config\Include\ScalabilitySettings.config",
			   "App_Config\Include\Sitecore.Analytics.Automation.TimeoutProcessing.config",
               "App_Config\Include\Sitecore.Analytics.Reporting.config",
               "App_Config\Include\Sitecore.ExperienceEditor.Speak.Requests.config",
               "App_Config\Include\Sitecore.ExperienceExplorer.Speak.Requests.config",
               "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.config",
               "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.Client.config",
               "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.Reporting.config",
               "App_Config\Include\FXM\Sitecore.FXM.Speak.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Client.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Services.config",
               "App_Config\Include\Social\Sitecore.Social.ExperienceProfile.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Client.config",
               "App_Config\Include\Sitecore.PathAnalyzer.config",
               "App_Config\Include\Sitecore.Marketing.Client.config",
               "App_Config\Include\Sitecore.MvcAnalytics.config",
			   "App_Config\Include\Sitecore.PathAnalyzer.RemoteClient.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Services.config",
               "App_Config\Include\.Sitecore.Speak.Important.config",
               "App_Config\Include\Sitecore.Speak.AntiCsrf.SheerUI.config",
               "App_Config\Include\Sitecore.Speak.Applications.config",
               "App_Config\Include\Sitecore.Speak.config",
               "App_Config\Include\Sitecore.Speak.ItemWebApi.config",
               "App_Config\Include\Sitecore.Speak.LaunchPad.config",
               "App_Config\Include\Sitecore.Speak.Mvc.config",
               "App_Config\Include\Sitecore.WebDAV.config",
               "bin\Sitecore.PathAnalyzer.dll",
               "bin\Sitecore.PathAnalyzer.Client.dll",
               "bin\Sitecore.PathAnalyzer.Services.dll",
               "bin\Sitecore.SequenceAnalyzer.dll",
			   "App_Config\Include\Sitecore.Xdb.Remote.Client.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Client.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.StorageProviders.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.WebAPI.config",
               "bin\Sitecore.ExperienceAnalytics.dll",
               "bin\Sitecore.ExperienceAnalytics.Client.dll",
			   "App_Config\Include\Social\Sitecore.Social.ScalabilitySettings.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-LuceneFilesToDisableOnCDServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Master.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.Index.Master.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Lucene.IndexConfiguration.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.Index.List.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.IndexConfiguration.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Master.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-LuceneFilesToDisableOnCMServer()
{
    $files = @("App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.Index.Web.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-LuceneFilesToEnableOnCDServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Lucene.DefaultIndexConfiguration.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Analytics.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Core.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.IndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Lucene.Index.DomainsSearch.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Web.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-LuceneFilesToEnableOnCMServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Lucene.DefaultIndexConfiguration.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Analytics.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Core.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Master.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.Index.Master.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.IndexConfiguration.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Lucene.IndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Lucene.Index.DomainsSearch.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.Index.List.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.IndexConfiguration.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Master.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Web.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-SolrFilesToDisableOnCDServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Solr.Index.Master.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.Index.Master.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Solr.IndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Solr.Index.DomainsSearch.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.Index.List.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.IndexConfiguration.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.Index.Master.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-SolrFilesToDisableOnCMServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Solr.Index.Web.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-SolrFilesToEnableOnCDServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Analytics.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Core.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.IndexConfiguration.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.Index.Web.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.0_Get-SolrFilesToEnableOnCMServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Analytics.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Core.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Web.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Master.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Solr.IndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Solr.Index.DomainsSearch.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.IndexConfiguration.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.Index.Master.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.Index.Web.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}