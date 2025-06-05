Pod::Spec.new do |spec|
  spec.name = 'DaroMCore'
  spec.version = '1.1.4'
  spec.summary = 'Ad network mediation sdk for iOS.'
  spec.description = <<-DESC
                      Daro is is a SDK that helps you to easily integrate ad networks into your app.
                      DESC
  spec.homepage = 'https://delightroom.com'
  spec.license = { :type => 'Custom' }
  spec.author = { 'Jun hyi' => 'finn@delightroom.com' }
  spec.source = { :http => "https://github.com/delightroom/daro-core-m-ios-sdk/releases/download/#{spec.version}/DaroMCore.xcframework.zip" }
  spec.swift_version = '5.7'
  spec.ios.deployment_target = '14.1'

  spec.resource_bundles = {
    'DaroMCoreAdsResources' => ['DaroMCore.xcframework/ios-arm64/DaroMCore.framework/PrivacyInfo.xcprivacy']
  }

  spec.static_framework = false
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.vendored_frameworks = 'DaroMCore.xcframework'
end
