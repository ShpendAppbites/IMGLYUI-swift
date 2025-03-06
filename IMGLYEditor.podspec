Pod::Spec.new do |s|
  s.name                     = "IMGLYEditor"
  s.version                  = "1.0.0-custom"
  s.summary                  = "The core editor component for the various IMG.LY editors."
  s.homepage                 = "https://img.ly"
  s.license                  = { :type => "Commercial", :file => "LICENSE.md" }
  s.authors                  = { "IMG.LY GmbH" => "contact@img.ly" }
  s.changelog                = "https://img.ly/docs/cesdk/changelog/"
  s.source                   = { :git => "https://github.com/ShpendAppbites/IMGLYUI-swift.git", :branch => "main" }
  s.source_files             = ["Bundle+.swift", "Sources/IMGLYEditor/**/*.{swift}"]
  s.resource_bundles         = { "IMGLYEditorAssets" => ["Sources/IMGLYEditor/Assets.xcassets"] }
  s.swift_versions           = "5.10"
  s.swift_version            = "5.10"
  s.cocoapods_version        = ">= 1.11.2"
  s.platform                 = :ios, "16.0"
  s.dependency               "IMGLYCamera", "1.0.0-custom"
  s.pod_target_xcconfig      = {
    "SWIFT_OBJC_INTERFACE_HEADER_NAME" => "",
    "SWIFT_INSTALL_OBJC_HEADER"        => "NO"
  }
  s.frameworks               = ["Combine", "CoreGraphics", "CoreMedia", "Foundation", "SwiftUI", "UniformTypeIdentifiers", "UIKit"]
end
