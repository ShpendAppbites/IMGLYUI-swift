Pod::Spec.new do |s|
  s.name             = 'IMGLYPostcardEditor'
  s.version          = '1.41.1'
  s.summary          = 'A mobile editor to facilitate optimal post- & greeting- card design.'
  s.description      = <<-DESC
A mobile editor to facilitate optimal post- & greeting- card design.
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

  s.source_files     = [
    'Bundle+.swift',
    'Sources/IMGLYPostcardEditor/**/*.{swift}'
  ]

  s.resources        = 'Sources/IMGLYPostcardEditor/Resources/*'

  s.dependency 'IMGLYEditor', '1.41.1'

  s.pod_target_xcconfig = {
    'SWIFT_OBJC_INTERFACE_HEADER_NAME' => '',
    'SWIFT_INSTALL_OBJC_HEADER'        => 'NO'
  }

  s.frameworks       = %w[SwiftUI]
end
