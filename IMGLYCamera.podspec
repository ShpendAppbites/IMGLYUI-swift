Pod::Spec.new do |s|
  s.name             = 'IMGLYCamera'
  s.version          = '1.41.1'
  s.summary          = 'A mobile camera with versatile video capturing capabilities.'
  s.description      = <<-DESC
A mobile camera with versatile video capturing capabilities.
Changelog: https://img.ly/docs/cesdk/changelog/
DESC
  s.homepage         = 'https://img.ly'
  s.license          = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.authors          = { 'IMG.LY GmbH' => 'contact@img.ly' }

  s.source           = {
    :git => 'https://github.com/ShpendAppbites/IMGLYUI-swift.git',
    :branch => 'main'
  }

  s.cocoapods_version = '>= 1.11.2'
  s.platform         = :ios, '16.0'
  s.swift_version = '5.10'

  s.source_files     = [
    'Bundle+.swift',
    'Sources/IMGLYCamera/**/*.{swift}'
  ]

  s.resource_bundles = {
    'IMGLYCameraAssets' => ['Sources/IMGLYCamera/Assets.xcassets']
  }

  s.dependency 'IMGLYCoreUI', '1.41.1'

  s.pod_target_xcconfig = {
    'SWIFT_OBJC_INTERFACE_HEADER_NAME' => '',
    'SWIFT_INSTALL_OBJC_HEADER'        => 'NO'
  }

  s.frameworks = %w[
    AVFoundation
    AVKit
    Combine
    CoreMedia
    Foundation
    SwiftUI
    UIKit
  ]
end
