Pod::Spec.new do |s|
  s.name              = 'IMGLYEditor'
  s.version           = '1.41.1'
  s.summary           = 'The core editor component for the various IMG.LY editors.'
  s.description       = <<-DESC
The core editor component for the various IMG.LY editors.

Changelog: https://img.ly/docs/cesdk/changelog/
DESC
  s.homepage          = 'https://github.com/ShpendAppbites/IMGLYUI-swift'
  s.license           = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.authors           = { 'IMG.LY GmbH' => 'contact@img.ly' }

  # Source and version
  s.source           = {
    :git => 'https://github.com/ShpendAppbites/IMGLYUI-swift.git',
    :branch => 'main'
  }

  # CocoaPods & Swift settings
  s.cocoapods_version = '>= 1.11.2'
  s.platform          = :ios, '16.0'
  s.swift_version    = '5.0'

  # Source files
  s.source_files      = [
    'Bundle+.swift',
    'Sources/IMGLYEditor/**/*.{swift}'
  ]

  # Resource bundles
  s.resource_bundles  = {
    'IMGLYEditorAssets' => ['Sources/IMGLYEditor/Assets.xcassets']
  }

  # Dependencies
  s.dependency        'IMGLYCamera'

  # Optional Xcode build settings
  s.pod_target_xcconfig = {
    'SWIFT_OBJC_INTERFACE_HEADER_NAME' => '',
    'SWIFT_INSTALL_OBJC_HEADER'        => 'NO'
  }

  # Frameworks to link
  s.frameworks        = %w[
    Combine
    CoreGraphics
    CoreMedia
    Foundation
    SwiftUI
    UniformTypeIdentifiers
    UIKit
  ]
end
