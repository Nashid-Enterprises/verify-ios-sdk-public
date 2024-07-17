Pod::Spec.new do |spec|

  spec.name           = 'Nashid_SDK'
  spec.version        = '2.0.0'
  spec.summary        = 'Nashid helps you to uniquely identify your users.'
  spec.description    = 'An identity verification tool integrated seamlessly in your application for easy and robust new customers on-boarding.'
  spec.homepage       = 'https://www.nashid.io'
  
  # Update the license declaration to include the license file path if it's in the root directory
  spec.license        = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.author         = 'Nashid'
  spec.platform       = :ios, '12.0'
  spec.swift_version  = '5.0'

  # Update the source URL to use HTTPS for better security
  spec.source         = { :git => "https://github.com/Nashid-Enterprises/verify-ios-sdk-public.git", :tag => "2.0.0" }

  spec.requires_arc   = true
  spec.static_framework = true
  spec.vendored_frameworks = 'IDVSDK.framework'

  # Add your Swift package dependency here
  spec.swift_versions = ['5.0', '5.1', '5.2', '5.3', '5.4', '5.5']
  spec.swift_package 'https://github.com/SwiftyTesseract/libtesseract.git', '0.2.0'
  
  spec.dependency "OpenCV-Dynamic-Framework", "'4.8.0-b1"
  spec.dependency "SwiftyTesseract", " ~> 3.1.3"
  spec.dependency "TensorFlowLiteObjC", "2.14.0"
  spec.dependency "Alamofire", "5.8.1"
  spec.dependency "lottie-ios", "4.3.3"
  spec.dependency "SDWebImage", "5.18.5"
  spec.dependency "OpenSSL-Universal", "1.1.1100"
  
  spec.pod_target_xcconfig = {
    'ARCHS[sdk=iphoneos*]' => 'arm64',
    'ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'VALID_ARCHS' => 'x86_64 arm64'
  }

  spec.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }

end

