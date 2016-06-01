Pod::Spec.new do |s|

  s.name         = "SalesforceNetworkTV"
  s.version      = "4.1.2"
  s.summary      = "Salesforce Mobile SDK for iOS - SalesforceNetwork"
  s.homepage     = "https://github.com/douglowder/SalesforceMobileSDK-iOS"

  s.license      = { :type => "Salesforce.com Mobile SDK License", :file => "LICENSE.md" }
  s.author       = { "Kevin Hawkins" => "khawkins@salesforce.com" }

  s.platform     = :tvos, "9.2"

  s.source       = { :git => "https://github.com/douglowder/SalesforceMobileSDK-iOS.git",
                     :branch => "master",
                     :submodules => true }
  
  s.requires_arc = true
  s.default_subspec  = 'SalesforceNetwork'
  s.header_dir = 'SalesforceNetwork'

  s.subspec 'SalesforceNetwork' do |networksdk|

      networksdk.dependency 'SalesforceSDKCoreTV'
      networksdk.source_files = 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/**/*.{h,m}', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/*.{h,m}', 'libs/SalesforceNetwork/SalesforceNetwork.h'
      networksdk.public_header_files = 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Action/CSFAction.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Protocols/CSFActionInput.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Protocols/CSFActionModel.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Protocols/CSFActionValue.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/OAuth/CSFAuthRefresh.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Utilities/CSFAvailability.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Utilities/CSFDefines.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Utilities/CSFForceDefines.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Protocols/CSFIndexedEntity.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Model/CSFInput.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Queue/CSFNetwork.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Protocols/CSFNetworkOutputCache.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Model/CSFOutput.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Support/CSFParameterStorage.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Action/CSFSalesforceAction.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Additions/SFUserAccount+SalesforceNetwork.h', 'libs/SalesforceNetwork/SalesforceNetwork.h'
      networksdk.requires_arc = true
      networksdk.frameworks = 'MobileCoreServices'

  end

end
