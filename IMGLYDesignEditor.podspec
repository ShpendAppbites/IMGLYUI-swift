Pod::Spec.new do |s|
  s.name             = 'IMGLYDesignEditor'
  s.version = '5.10-custom'
  s.summary          = 'A mobile editor with versatile editing capabilities for a broad range of design applications.'
  s.description      = <<-DESC
A mobile editor with versatile editing capabilities for a broad range of design applications.
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
    'Sources/IMGLYDesignEditor/**/*.{swift}'
  ]

  s.resources        = 'Sources/IMGLYDesignEditor/Resources/*'

  s.dependency 'IMGLYEditor', '5.10-custom'

  s.pod_target_xcconfig = {
    'SWIFT_OBJC_INTERFACE_HEADER_NAME' => '',
    'SWIFT_INSTALL_OBJC_HEADER'        => 'NO'
  }

  s.frameworks       = %w[SwiftUI]
end
