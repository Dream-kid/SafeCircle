#source 'https://github.com/CocoaPods/Specs.git'
#source 'https://github.com/goinstant/pods-specs-public'

# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

target 'PhotoEnhancer' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for PhotoEnhancer

  pod 'ProgressHUD', '~> 13.7.2'
  pod 'Alamofire'
  pod 'FirebaseDatabase'
  pod 'Google-Mobile-Ads-SDK', '~> 10.13.0'
  pod 'Firebase/Analytics'
  pod 'SDWebImage'
  pod 'GenericIAPHelper2', '~> 0.0'
  
  pod 'FBSDKCoreKit', '~> 8.0.0'
  pod 'FBSDKLoginKit', '~> 8.0.0'
  pod 'FBSDKShareKit', '~> 8.0.0'
  pod 'Qonversion'
  pod 'Firebase/RemoteConfig'

end
post_install do |installer|
    installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
            end
        end
    end
installer.pods_project.targets.each do |target|
          target.build_configurations.each do |config|
          xcconfig_path = config.base_configuration_reference.real_path
          xcconfig = File.read(xcconfig_path)
          xcconfig_mod = xcconfig.gsub(/DT_TOOLCHAIN_DIR/, "TOOLCHAIN_DIR")
          File.open(xcconfig_path, "w") { |file| file << xcconfig_mod }
          end
      end
end
