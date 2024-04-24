
Pod::Spec.new do |spec|

  spec.name           = 'Nashid_SDK'
  spec.version        = '1.7.0'
  spec.summary        = 'Nashid helps you to uniquely identify your users.'
  spec.description    = 'Nashid completes a new document API integration and url changed.'
  spec.homepage       = 'https://www.Nashid.com'
  spec.license        = 'MIT'
  spec.author         = "Nashid"
  spec.platform       = :ios, '12.0'
  spec.swift_version  = '5.0'
  spec.source       = { :http => "https://github.com/Nashid-Enterprises/verify-ios-sdk-public/archive/refs/tags/1.7.0.zip", :tag => "1.7.0"}
  spec.requires_arc = true
  spec.static_framework = true
# Explicitly list source files, excluding Info.plist
  spec.source_files = [
    '**/*.h',
    '**/*.m',
    '**/*.mm',
    '**/*.swift',
    '**/*.xib',
    '**/*.traineddata',
    'Info.plist'
  ]

  # Exclude Info.plist from being added to the target
  spec.exclude_files = '**/*.{plist}'

  # Add the framework to the target
  spec.vendored_frameworks = '**/IDVSDK.framework'

  # Add any other resource files if needed
  spec.resources = '**/*.xib'

  # Include Info.plist separately
  #spec.resources = '**/Info.plist'

  #spec.source_files  = '**/*', 'Nashid_SDK/IDVSDK.framework/Info.plist'
  #spec.resources = "**/*.xib"
  #spec.exclude_files = ["**/*.{plist}"]
  #spec.resource_bundles = {
   #     'Nashid_SDK' => ['Nashid_SDK/**/*.{storyboard,png,gif,xcassets,ttf,xib,json,strings,bundle}']
  #}

  #spec.dependency 'FaceTecSDK', '9.4.23'
  #spec.vendored_frameworks = 'Kvalifika.xcframework'

  spec.dependency "OpenCV", "4.3.0"
  spec.dependency "SwiftyTesseract", " ~> 3.1.3"
  spec.dependency "TensorFlowLiteObjC", "2.14.0"
  spec.dependency "Alamofire", "5.8.1"
  spec.dependency "lottie-ios", "4.3.3"
  spec.dependency "SDWebImage", "5.18.5"
  spec.dependency "OpenSSL-Universal", "1.1.1100"


 tfl_dir = 'tensorflow/lite/'
  objc_dir = tfl_dir + 'experimental/objc/'
 spec.pod_target_xcconfig = {
   'HEADER_SEARCH_PATHS' =>
      '"${PODS_TARGET_SRCROOT}" ' +
      '"${PODS_TARGET_SRCROOT}/' + objc_dir  + 'apis"',
    'VALID_ARCHS' => 'x86_64 armv7 arm64',
 }

end
