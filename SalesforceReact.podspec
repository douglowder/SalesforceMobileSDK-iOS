Pod::Spec.new do |s|

  s.name         = "SalesforceReact"
  s.version      = "4.1.2"
  s.summary      = "Salesforce Mobile SDK for iOS - SalesforceReact"
  s.homepage     = "https://github.com/forcedotcom/SalesforceMobileSDK-iOS"

  s.license      = { :type => "Salesforce.com Mobile SDK License", :file => "LICENSE.md" }
  s.author       = { "Kevin Hawkins" => "khawkins@salesforce.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/forcedotcom/SalesforceMobileSDK-iOS.git",
                     :branch => "master",
                     :submodules => true }
  
  s.requires_arc = true
  s.default_subspec  = 'SalesforceReact'

  s.subspec 'SalesforceReact' do |salesforcereact|

      salesforcereact.dependency 'SmartSync'
      salesforcereact.source_files = 'libs/SalesforceReact/SalesforceReact/Classes/**/*.{h,m}'
      salesforcereact.public_header_files = 'libs/SalesforceReact/SalesforceReact/Classes/SFNetReactBridge.h', 'libs/SalesforceReact/SalesforceReact/Classes/SFOauthReactBridge.h', 'libs/SalesforceReact/SalesforceReact/Classes/SFSmartStoreReactBridge.h', 'libs/SalesforceReact/SalesforceReact/Classes/SFSmartSyncReactBridge.h', 'libs/SalesforceReact/SalesforceReact/SalesforceReact.h'
      salesforcereact.prefix_header_contents = '#import <SalesforceSDKCore/SFLogger.h>'
      salesforcereact.requires_arc = true

  end


end
