
Pod::Spec.new do |spec|

  spec.name           = 'Nashid_SDK'
  spec.version        = '1.0.0'
  spec.summary        = 'Nashid helps you to uniquely identify your users.'
  spec.description    = 'Nashid completes a new document API integration and url changed.'
  spec.homepage       = 'https://www.Nashid.com'
  spec.license        = 'MIT'
  spec.author         = "Nashid"
  spec.platform       = :ios, '12.0'
  spec.swift_version  = '5.0'
  spec.source       = { :http => "https://github.com/NirajAkratech/Nashid_SDK/archive/refs/tags/1.0.0.zip" }
  spec.requires_arc = true
  spec.source_files  = 'Nashid_SDK/IDVSDK'
  spec.resource_bundles = {
        'Nashid_SDK' => ['Nashid_SDK/**/*#.#{storyboard,png,gif,xcassets,ttf,xib,json,strings#,bundle,framework}']
  }

  #spec.dependency 'FaceTecSDK', '9.4.23'
  #spec.vendored_frameworks = 'Kvalifika.xcframework'

end
