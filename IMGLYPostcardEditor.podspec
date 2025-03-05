Pod::Spec.new do |s|
  s.name                     = "IMGLYPostcardEditor"
  s.version                  = "1.0-custom"
  s.summary                  = "A mobile editor to facilitate optimal post- & greeting- card design."
  s.homepage                 = "https://img.ly"
  s.license                  = { :type => "Commercial", :file => "LICENSE.md" }
  s.authors                  = { "IMG.LY GmbH" => "contact@img.ly" }
  s.changelog                = "https://img.ly/docs/cesdk/changelog/"
  
  # Use your forked repository and the main branch.
  s.source                   = { :git => "https://github.com/ShpendAppbites/IMGLYUI-swift.git", :branch => "main" }
  
  s.source_files             = ["Bundle+.swift", "Sources/IMGLYPostcardEditor/**/*.{swift}"]
  s.resources                = "Sources/IMGLYPostcardEditor/Resources/*"
  s.swift_versions           = "5.10"
  s.swift_version            = "5.10"
  s.cocoapods_version        = ">= 1.11.2"
  s.platform                 = { :ios => "16.0" }
  
  # Update dependency on IMGLYEditor to use the custom version.
  s.dependency               "IMGLYEditor", "1.0-custom"
  
  s.pod_target_xcconfig      = {
    "SWIFT_OBJC_INTERFACE_HEADER_NAME" => "",
    "SWIFT_INSTALL_OBJC_HEADER"        => "NO"
  }
  s.frameworks               = ["SwiftUI"]
end
