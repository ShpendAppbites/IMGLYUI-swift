Pod::Spec.new do |s|
  s.name                     = "IMGLYCamera"
  s.version                  = "1.0.0-custom"
  s.summary                  = "A mobile camera with versatile video capturing capabilities."
  s.homepage                 = "https://img.ly"
  s.license                  = { :type => "Commercial", :file => "LICENSE.md" }
  s.authors                  = { "IMG.LY GmbH" => "contact@img.ly" }
  s.changelog                = "https://img.ly/docs/cesdk/changelog/"
  s.source                   = { :git => "https://github.com/ShpendAppbites/IMGLYUI-swift.git", :branch => "main" }
  s.source_files             = ["Bundle+.swift", "Sources/IMGLYCamera/**/*.{swift}"]
  s.resource_bundles         = { "IMGLYCameraAssets" => ["Sources/IMGLYCamera/Assets.xcassets"] }
  s.swift_versions           = "5.10"
  s.swift_version            = "5.10"
  s.cocoapods_version        = ">= 1.11.2"
  s.platform                 = :ios, "16.0"
  s.dependency               "IMGLYCoreUI", "1.0.0-custom"
  s.pod_target_xcconfig      = {
    "SWIFT_OBJC_INTERFACE_HEADER_NAME" => "",
    "SWIFT_INSTALL_OBJC_HEADER"        => "NO"
  }
  s.frameworks               = ["AVFoundation", "AVKit", "Combine", "CoreMedia", "Foundation", "SwiftUI", "UIKit"]
end
