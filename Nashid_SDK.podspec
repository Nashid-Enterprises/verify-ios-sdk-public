Pod::Spec.new do |spec|

  spec.name           = 'Nashid_SDK'
  spec.version        = '1.7.0'
  spec.summary        = 'Nashid helps you to uniquely identify your users.'
  spec.description    = 'Nashid completes a new document API integration and URL changed.'
  spec.homepage       = 'https://www.Nashid.com'
  spec.license        = 'MIT'
  spec.author         = 'Nashid'
  spec.platform       = :ios, '12.0'
  spec.swift_version  = '5.0'

  spec.source       = { :http => "https://github.com/Nashid-Enterprises/verify-ios-sdk-public/archive/refs/tags/1.7.0.zip"}
  spec.requires_arc = true
  spec.static_framework = true

  spec.vendored_frameworks = 'IDVSDK.framework'

  spec.dependency "OpenCV", "4.3.0"
  spec.dependency "SwiftyTesseract", " ~> 3.1.3"
  spec.dependency "TensorFlowLiteObjC", "2.14.0"
  spec.dependency "Alamofire", "5.8.1"
  spec.dependency "lottie-ios", "4.3.3"
  spec.dependency "SDWebImage", "5.18.5"
  spec.dependency "OpenSSL-Universal", "1.1.1100"

end

