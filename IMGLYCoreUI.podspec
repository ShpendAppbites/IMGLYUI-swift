Pod::Spec.new do |s|
  s.name                     = "IMGLYCoreUI"
  s.version                  = "2-custom"
  s.summary                  = "The core UI components for the various IMG.LY editors."
  s.homepage                 = "https://img.ly"
  s.license                  = { :type => "Commercial", :file => "LICENSE.md" }
  s.authors                  = { "IMG.LY GmbH" => "contact@img.ly" }
  s.changelog                = "https://img.ly/docs/cesdk/changelog/"
  s.source                   = { :git => "https://github.com/ShpendAppbites/IMGLYUI-swift.git", :branch => "main" }
  s.source_files             = ["Bundle+.swift", "Sources/IMGLYCoreUI/**/*.{swift}"]
  s.resource_bundles         = { "IMGLYCoreUIAssets" => ["Sources/IMGLYCoreUI/Assets.xcassets"] }
  s.swift_versions           = "5.10"
  s.swift_version            = "5.10"
  s.cocoapods_version        = ">= 1.11.2"
  s.platform                 = { :ios => "16.0" }
  s.dependency               "IMGLYCore", "2-custom"
  s.dependency               "Kingfisher", "~> 7.10.0"
  s.dependency               "SwiftUIIntrospect", "~> 1.1.2"
  s.pod_target_xcconfig      = {
    "SWIFT_OBJC_INTERFACE_HEADER_NAME" => "",
    "SWIFT_INSTALL_OBJC_HEADER"        => "NO"
  }
  s.frameworks               = ["AVFoundation", "Combine", "CoreGraphics", "CoreMedia", "CoreServices", "Foundation", "MobileCoreServices", "Photos", "SwiftUI", "UniformTypeIdentifiers", "UIKit"]
end
