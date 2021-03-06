Pod::Spec.new do |s|

  s.name         = "SmartSyncTV"
  s.version      = "4.1.2"
  s.summary      = "Salesforce Mobile SDK for iOS - SmartSync"
  s.homepage     = "https://github.com/douglowder/SalesforceMobileSDK-iOS"

  s.license      = { :type => "Salesforce.com Mobile SDK License", :file => "LICENSE.md" }
  s.author       = { "Kevin Hawkins" => "khawkins@salesforce.com" }

  s.platform     = :tvos, "9.2"

  s.source       = { :git => "https://github.com/douglowder/SalesforceMobileSDK-iOS.git",
                     :branch => "master",
                     :submodules => true }
  
  s.requires_arc = true
  s.default_subspec  = 'SmartSync'
  s.header_dir = 'SmartSync'

  s.subspec 'SmartSync' do |smartsync|

      smartsync.dependency 'SalesforceRestAPITV'
      smartsync.dependency 'SmartStoreTV'
      smartsync.dependency 'SalesforceSDKCoreTV'
      smartsync.source_files = 'libs/SmartSync/SmartSync/Classes/**/*.{h,m}', 'libs/SmartSync/SmartSync/SmartSync.h'
      smartsync.public_header_files = 'libs/SmartSync/SmartSync/Classes/Util/SFMruSyncDownTarget.h', 'libs/SmartSync/SmartSync/Classes/Model/SFObject.h', 'libs/SmartSync/SmartSync/Classes/Model/SFObjectType.h', 'libs/SmartSync/SmartSync/Classes/Model/SFObjectTypeLayout.h', 'libs/SmartSync/SmartSync/Classes/Manager/SFSmartSyncCacheManager.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSmartSyncConstants.h', 'libs/SmartSync/SmartSync/Classes/Manager/SFSmartSyncMetadataManager.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSmartSyncNetworkUtils.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSmartSyncObjectUtils.h', 'libs/SmartSync/SmartSync/Classes/Model/SFSmartSyncPersistableObject.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSmartSyncSoqlBuilder.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSmartSyncSoslBuilder.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSmartSyncSoslReturningBuilder.h', 'libs/SmartSync/SmartSync/Classes/Manager/SFSmartSyncSyncManager.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSoqlSyncDownTarget.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSoslSyncDownTarget.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSyncDownTarget.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSyncOptions.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSyncState.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSyncTarget.h', 'libs/SmartSync/SmartSync/Classes/Util/SFSyncUpTarget.h', 'libs/SmartSync/SmartSync/SmartSync.h'
      smartsync.prefix_header_contents = '#import <SalesforceSDKCore/SFLogger.h>'
      smartsync.requires_arc = true

  end

end
