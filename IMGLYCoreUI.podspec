Pod::Spec.new do |s|
  s.name             = 'IMGLYCoreUI'
  s.version          = '1.41.1'
  s.summary          = 'The core UI components for the various IMG.LY editors.'
  s.description      = <<-DESC
The core UI components for the various IMG.LY editors.

Changelog: https://img.ly/docs/cesdk/changelog/
DESC
  s.homepage         = 'https://img.ly'
  s.license          = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.authors          = { 'IMG.LY GmbH' => 'contact@img.ly' }

  s.source           = {
    :git => 'https://github.com/ShpendAppbites/IMGLYUI-swift.git',
    :tag => '1.41.1'
  }

  s.cocoapods_version = '>= 1.11.2'
  s.platform         = :ios, '16.0'
  s.swift_version    = '5.10'

  # Source files
  s.source_files = [
    'Bundle+.swift',
    'Sources/IMGLYCoreUI/**/*.{swift}'
  ]

  # Resource bundles
  s.resource_bundles = {
    'IMGLYCoreUIAssets' => ['Sources/IMGLYCoreUI/Assets.xcassets']
  }

  # Dependencies
  s.dependency 'IMGLYCore',           '1.41.1'
  s.dependency 'Kingfisher',         '~> 7.10.0'
  s.dependency 'SwiftUIIntrospect',  '~> 1.1.2'

  # Optional Xcode build settings
  s.pod_target_xcconfig = {
    'SWIFT_OBJC_INTERFACE_HEADER_NAME' => '',
    'SWIFT_INSTALL_OBJC_HEADER'        => 'NO'
  }

  # Linked frameworks
  s.frameworks = %w[
    AVFoundation
    Combine
    CoreGraphics
    CoreMedia
    CoreServices
    Foundation
    MobileCoreServices
    Photos
    SwiftUI
    UniformTypeIdentifiers
    UIKit
  ]
end
