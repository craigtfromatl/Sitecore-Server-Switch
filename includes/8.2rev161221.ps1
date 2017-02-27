# Functions that contain all the config files for Sitecore Experience Platform 8.2 rev. 161221 (8.2 Update-2)
# @craigtfromatl

function 8.2rev161221_Get-AllLuceneFiles()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Lucene.DefaultIndexConfiguration.config",
               "App_Config\Include\Sitecore.ContentSearch.Lucene.DefaultIndexConfiguration.Xdb.config",
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
               "App_Config\Include\Sitecore.Marketing.Lucene.Index.Master.config",
               "App_Config\Include\Sitecore.Marketing.Lucene.Index.Web.config",
               "App_Config\Include\Sitecore.Marketing.Lucene.IndexConfiguration.config",
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Lucene.IndexConfiguration.config",
               "App_Config\Include\FXM\Sitecore.FXM.Lucene.DomainsSearch.DefaultIndexConfiguration.config",
               "App_Config\Include\FXM\Sitecore.FXM.Lucene.DomainsSearch.Index.Master.config",
               "App_Config\Include\FXM\Sitecore.FXM.Lucene.DomainsSearch.Index.Web.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.Index.List.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.IndexConfiguration.config",
               "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Analytics.Facebook.config",
               "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Master.config",
               "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Web.config",
               "App_Config\Include\Social\Sitecore.Social.Lucene.IndexConfiguration.config",
               "App_Config\Include\Sitecore.Marketing.Lucene.Index.Master.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-AllSolrFiles()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.config",
               "App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.Xdb.config",
               "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Analytics.config",
               "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Core.config",
               "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Master.config",
               "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Web.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.Index.Master.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.Index.Web.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.IndexConfiguration.config",
               "App_Config\Include\Sitecore.Marketing.Solr.Index.Master.config",
               "App_Config\Include\Sitecore.Marketing.Solr.Index.Web.config",
               "App_Config\Include\Sitecore.Marketing.Solr.IndexConfiguration.config",
               "App_Config\Include\Sitecore.Speak.ContentSearch.Solr.config",
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Solr.IndexConfiguration.config",
               "App_Config\Include\FXM\Sitecore.FXM.Solr.DomainsSearch.DefaultIndexConfiguration.config",
               "App_Config\Include\FXM\Sitecore.FXM.Solr.DomainsSearch.Index.Master.config",
               "App_Config\Include\FXM\Sitecore.FXM.Solr.DomainsSearch.Index.Web.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.Index.List.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.IndexConfiguration.config",
               "App_Config\Include\Social\Sitecore.Social.Solr.Index.Master.config",
               "App_Config\Include\Social\Sitecore.Social.Solr.Index.Web.config",
               "App_Config\Include\Social\Sitecore.Social.Solr.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-FilesToDisableOnCDServer()
{
    $files = @("App_Config\Include\001.Sitecore.Speak.Important.config",
               "App_Config\Include\Sitecore.Analytics.Oracle.config",
               "App_Config\Include\Sitecore.Analytics.Processing.Aggregation.config",
               "App_Config\Include\Sitecore.Analytics.Processing.Aggregation.Services.config",
               "App_Config\Include\Sitecore.Analytics.Processing.config",
               "App_Config\Include\Sitecore.Analytics.Processing.Services.config",
               "App_Config\Include\Sitecore.Analytics.Reporting.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.Database.ScaledCM.config",
               "App_Config\Include\Sitecore.EngagementAutomation.Processing.Aggregation.config",
               "App_Config\Include\Sitecore.EngagementAutomation.Processing.Aggregation.Services.config",
               "App_Config\Include\Sitecore.EngagementAutomation.Processing.config",
               "App_Config\Include\Sitecore.EngagementAutomation.TimeoutProcessing.config",
               "App_Config\Include\Sitecore.Marketing.Client.config",
               "App_Config\Include\Sitecore.MarketingProcessingRole.config",
               "App_Config\Include\Sitecore.MarketingReportingRole.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Client.config",
               "App_Config\Include\Sitecore.PathAnalyzer.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Processing.config",
               "App_Config\Include\Sitecore.PathAnalyzer.RemoteClient.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Services.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Services.RemoteServer.config",
               "App_Config\Include\Sitecore.PathAnalyzer.StorageProviders.config",
               "App_Config\Include\Sitecore.PipelineProfiling.config",
               "App_Config\Include\Sitecore.Processing.config",
               "App_Config\Include\Sitecore.Publishing.EventProvider.Async.config",
               "App_Config\Include\Sitecore.Publishing.Parallel.config",
               "App_Config\Include\Sitecore.Shell.MarketingAutomation.config",
               "App_Config\Include\Sitecore.Speak.AntiCsrf.SheerUI.config",
               "App_Config\Include\Sitecore.Speak.Applications.config",
               "App_Config\Include\Sitecore.Speak.Components.AntiCsrf.config",
               "App_Config\Include\Sitecore.Speak.Components.Mvc.config",
               "App_Config\Include\Sitecore.Speak.Components.config",
               "App_Config\Include\Sitecore.Speak.config",
               "App_Config\Include\Sitecore.Speak.ItemWebApi.config",
               "App_Config\Include\Sitecore.Speak.LaunchPad.config",
               "App_Config\Include\Sitecore.Speak.Mvc.config",
               "App_Config\Include\Sitecore.WebDAV.config",
               "App_Config\Include\Sitecore.Xdb.Remote.Client.config",
               "App_Config\Include\Sitecore.Xdb.Remote.Client.MarketingAssets.config",
               "App_Config\Include\Sitecore.Xdb.Remote.Server.config",
               "App_Config\Include\Sitecore.Xdb.Remote.Server.MarketingAssets.config",
               "App_Config\Include\CES\Sitecore.CES.DeviceDetection.CheckInitialization.config",
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.ApplicationDependencies.config",
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Client.RulePerformance.config",
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.PreemptiveScreenshot.config",
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Processing.Aggregation.config",
               "App_Config\Include\Sitecore.ExperienceAnalytics.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Aggregation.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Client.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Reduce.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.StorageProviders.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.WebAPI.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.ReAggregation.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.ReAggregation.Scheduling.config",
               "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.Client.config",
               "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.config",
               "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.Reporting.config",
               "App_Config\Include\FXM\Sitecore.FXM.Speak.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Client.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.DisableListLocking.config",
               "App_Config\Include\ListManagement\Sitecore.ListManagement.Services.config",
               "App_Config\Include\Social\Sitecore.Social.ExperienceProfile.config",
               "App_Config\Include\Social\Sitecore.Social.Klout.config",
               "App_Config\Include\XdbCloud\Sitecore.Cloud.Xdb.config",
               "App_Config\Include\XdbCloud\Sitecore.ContentSearch.Cloud.DefaultIndexConfiguration.config",
               "App_Config\Include\XdbCloud\Sitecore.ContentSearch.Cloud.Index.Analytics.config",
               "sitecore\shell\Applications\Reports\Dashboard\CampaignCategoryDefaultSettings.config",
               "sitecore\shell\Applications\Reports\Dashboard\Configuration.config",
               "sitecore\shell\Applications\Reports\Dashboard\DefaultSettings.config",
               "sitecore\shell\Applications\Reports\Dashboard\SingleCampaignDefaultSettings.config",
               "sitecore\shell\Applications\Reports\Dashboard\SingleTrafficTypeDefaultSettings.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-FilesToDisableOnCMServer()
{
    $files = @("App_Config\Include\Sitecore.Analytics.Oracle.config",
               "App_Config\Include\Sitecore.Analytics.Processing.Aggregation.Services.config",
               "App_Config\Include\Sitecore.Analytics.Processing.Services.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.Aggregation.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.Database.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.Database.ScaledCM.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.RobotDetection.config",
               "App_Config\Include\Sitecore.EngagementAutomation.Processing.Aggregation.Services.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.RepositoriesCD.config",
               "App_Config\Include\Sitecore.Marketing.TaxonomyCD.config",
               "App_Config\Include\Sitecore.MarketingCD.config",
               "App_Config\Include\Sitecore.MarketingProcessingRole.config",
               "App_Config\Include\Sitecore.MarketingReportingRole.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Processing.config",
               "App_Config\Include\Sitecore.PathAnalyzer.Services.RemoteServer.config",
               "App_Config\Include\Sitecore.PipelineProfiling.config",
               "App_Config\Include\Sitecore.Publishing.EventProvider.Async.config",
               "App_Config\Include\Sitecore.Publishing.Parallel.config",
               "App_Config\Include\Sitecore.Xdb.Remote.Server.config",
               "App_Config\Include\Sitecore.Xdb.Remote.Server.MarketingAssets.config",
               "App_Config\Include\CES\Sitecore.CES.DeviceDetection.CheckInitialization.config",
               "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Processing.Aggregation.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Aggregation.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Reduce.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.StorageProviders.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.ReAggregation.config",
               "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.ReAggregation.Scheduling.config",
               "App_Config\Include\Social\Sitecore.Social.Klout.config",
               "App_Config\Include\XdbCloud\Sitecore.Cloud.Xdb.config",
               "App_Config\Include\XdbCloud\Sitecore.ContentSearch.Cloud.DefaultIndexConfiguration.config",
               "App_Config\Include\XdbCloud\Sitecore.ContentSearch.Cloud.Index.Analytics.config",
			   "App_Config\Include\Z.SwitchMasterToWeb\SwitchMasterToWeb.config",
               "sitecore\shell\Applications\Reports\Dashboard\CampaignCategoryDefaultSettings.config",
               "sitecore\shell\Applications\Reports\Dashboard\Configuration.config",
               "sitecore\shell\Applications\Reports\Dashboard\DefaultSettings.config",
               "sitecore\shell\Applications\Reports\Dashboard\SingleCampaignDefaultSettings.config",
               "sitecore\shell\Applications\Reports\Dashboard\SingleTrafficTypeDefaultSettings.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-FilesToEnableOnCDServer()
{
    $files = @("App_Config\Include\CacheContainers.config",
               "App_Config\Include\DataFolder.config",
               "App_Config\Include\ScalabilitySettings.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.Aggregation.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.Database.config",
               "App_Config\Include\Sitecore.Analytics.Tracking.RobotDetection.config",
               "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.RepositoriesCD.config",
               "App_Config\Include\Sitecore.Marketing.TaxonomyCD.config",
               "App_Config\Include\Sitecore.MarketingCD.config",
			   "App_Config\Include\Z.SwitchMasterToWeb\SwitchMasterToWeb.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-FilesToEnableOnCMServer()
{
    $files = @("App_Config\Include\001.Sitecore.Speak.Important.config",
               "App_Config\Include\CacheContainers.config",
               "App_Config\Include\DataFolder.config",
               "App_Config\Include\ScalabilitySettings.config",
			   "App_Config\Include\Sitecore.Analytics.Processing.Aggregation.config",
			   "App_Config\Include\Sitecore.Analytics.Processing.config",
			   "App_Config\Include\Sitecore.Analytics.Reporting.config",
			   "App_Config\Include\Sitecore.EngagementAutomation.Processing.Aggregation.config",
			   "App_Config\Include\Sitecore.EngagementAutomation.Processing.config",
			   "App_Config\Include\Sitecore.EngagementAutomation.TimeoutProcessing.config",
			   "App_Config\Include\Sitecore.Marketing.Client.config",
			   "App_Config\Include\Sitecore.PathAnalyzer.Client.config",
			   "App_Config\Include\Sitecore.PathAnalyzer.config",
			   "App_Config\Include\Sitecore.PathAnalyzer.RemoteClient.config",
			   "App_Config\Include\Sitecore.PathAnalyzer.Services.config",
			   "App_Config\Include\Sitecore.PathAnalyzer.StorageProviders.config",
			   "App_Config\Include\Sitecore.Processing.config",
			   "App_Config\Include\Sitecore.Shell.MarketingAutomation.config",
			   "App_Config\Include\Sitecore.Speak.AntiCsrf.SheerUI.config",
			   "App_Config\Include\Sitecore.Speak.Applications.config",
			   "App_Config\Include\Sitecore.Speak.Components.AntiCsrf.config",
			   "App_Config\Include\Sitecore.Speak.Components.Mvc.config",
			   "App_Config\Include\Sitecore.Speak.Components.config",
			   "App_Config\Include\Sitecore.Speak.config",
			   "App_Config\Include\Sitecore.Speak.ItemWebApi.config",
			   "App_Config\Include\Sitecore.Speak.LaunchPad.config",
			   "App_Config\Include\Sitecore.Speak.Mvc.config",
			   "App_Config\Include\Sitecore.WebDAV.config",
			   "App_Config\Include\Sitecore.Xdb.Remote.Client.config",
			   "App_Config\Include\Sitecore.Xdb.Remote.Client.MarketingAssets.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.ApplicationDependencies.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Client.RulePerformance.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.PreemptiveScreenshot.config",
			   "App_Config\Include\Sitecore.ExperienceAnalytics.config",
			   "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.Client.config",
			   "App_Config\Include\ExperienceAnalytics\Sitecore.ExperienceAnalytics.WebAPI.config",
			   "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.Client.config",
			   "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.config",
			   "App_Config\Include\ExperienceProfile\Sitecore.ExperienceProfile.Reporting.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Speak.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Client.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.DisableListLocking.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Services.config",
			   "App_Config\Include\Social\Sitecore.Social.ExperienceProfile.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-LuceneFilesToDisableOnCDServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Master.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Indexes.Sharded.Core.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Indexes.Sharded.Master.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Indexes.Sharded.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.Index.Master.config",
			   "App_Config\Include\Sitecore.Marketing.Lucene.Index.Master.config",
			   "App_Config\Include\Sitecore.Speak.ContentSearch.Lucene.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Lucene.IndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Lucene.DomainsSearch.Index.Master.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.Index.List.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.IndexConfiguration.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Master.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-LuceneFilesToDisableOnCMServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Web.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Indexes.Sharded.Core.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Indexes.Sharded.Master.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Indexes.Sharded.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Lucene.Index.Web.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Web.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-LuceneFilesToEnableOnCDServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Lucene.DefaultIndexConfiguration.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.DefaultIndexConfiguration.Xdb.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Analytics.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Core.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.IndexConfiguration.config",
			   "App_Config\Include\Sitecore.Marketing.Lucene.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Lucene.IndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Lucene.DomainsSearch.DefaultIndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Lucene.DomainsSearch.Index.Web.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Web.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-LuceneFilesToEnableOnCMServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Lucene.DefaultIndexConfiguration.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.DefaultIndexConfiguration.Xdb.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Analytics.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Core.config",
			   "App_Config\Include\Sitecore.ContentSearch.Lucene.Index.Master.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.Index.Master.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Lucene.IndexConfiguration.config",
			   "App_Config\Include\Sitecore.Marketing.Lucene.Index.Master.config",
			   "App_Config\Include\Sitecore.Marketing.Lucene.IndexConfiguration.config",
			   "App_Config\Include\Sitecore.Speak.ContentSearch.Lucene.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Lucene.IndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Lucene.DomainsSearch.DefaultIndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Lucene.DomainsSearch.Index.Master.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Lucene.DomainsSearch.Index.Web.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.Index.List.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Lucene.IndexConfiguration.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.Index.Master.config",
			   "App_Config\Include\Social\Sitecore.Social.Lucene.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-SolrFilesToDisableOnCDServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Solr.Index.Core.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Master.config",
			   "App_Config\Include\Sitecore.ContentSearch.SolrCloud.SwitchOnRebuild.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.Index.Master.config",
			   "App_Config\Include\Sitecore.Marketing.Lucene.IndexConfiguration.config",
			   "App_Config\Include\Sitecore.Marketing.Solr.Index.Master.config",
			   "App_Config\Include\Sitecore.Speak.ContentSearch.Solr.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Solr.IndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Solr.DomainsSearch.Index.Master.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.Index.List.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.IndexConfiguration.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.Index.Master.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-SolrFilesToDisableOnCMServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Solr.Index.Web.config",
			   "App_Config\Include\Sitecore.ContentSearch.SolrCloud.SwitchOnRebuild.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Lucene.IndexConfiguration.config",
			   "App_Config\Include\Sitecore.Marketing.Solr.Index.Web.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.Index.Web.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-SolrFilesToEnableOnCDServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.Xdb.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Analytics.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.IndexConfiguration.config",
			   "App_Config\Include\Sitecore.Marketing.Solr.Index.Web.config",
			   "App_Config\Include\Sitecore.Marketing.Solr.IndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Solr.DomainsSearch.DefaultIndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Solr.DomainsSearch.Index.Web.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.Index.Web.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}

function 8.2rev161221_Get-SolrFilesToEnableOnCMServer()
{
    $files = @("App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.Xdb.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Analytics.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Core.config",
			   "App_Config\Include\Sitecore.ContentSearch.Solr.Index.Master.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.Index.Master.config",
			   "App_Config\Include\Sitecore.Marketing.Definitions.MarketingAssets.Repositories.Solr.IndexConfiguration.config",
			   "App_Config\Include\Sitecore.Marketing.Solr.Index.Master.config",
			   "App_Config\Include\Sitecore.Marketing.Solr.IndexConfiguration.config",
			   "App_Config\Include\Sitecore.Speak.ContentSearch.Solr.config",
			   "App_Config\Include\ContentTesting\Sitecore.ContentTesting.Solr.IndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Solr.DomainsSearch.DefaultIndexConfiguration.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Solr.DomainsSearch.Index.Master.config",
			   "App_Config\Include\FXM\Sitecore.FXM.Solr.DomainsSearch.Index.Web.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.Index.List.config",
			   "App_Config\Include\ListManagement\Sitecore.ListManagement.Solr.IndexConfiguration.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.Index.Master.config",
			   "App_Config\Include\Social\Sitecore.Social.Solr.IndexConfiguration.config")

    return $files | % { Join-Path $webrootPath -ChildPath $_ }
}