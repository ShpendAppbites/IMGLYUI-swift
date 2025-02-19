Pod::Spec.new do |s|
    s.name         = 'IMGLYCoreUI'
    s.version      = '1.41.1'
    s.summary      = 'UI layer for IMGLYCore'
    s.description  = 'Core UI components for IMGLY.'
    s.homepage     = 'https://github.com/ShpendAppbites/IMGLY-swift'
    s.license      = 'MIT'
    s.author       = { 'You' => 'you@example.com' }
  
    s.swift_version = '5.0'
    s.platform     = :ios, '16.0'
  
    s.source       = {
      :git => 'https://github.com/ShpendAppbites/IMGLY-swift.git',
      :tag => '1.41.1'
    }
  
    s.module_name  = 'IMGLYCoreUI'
    s.source_files = 'Sources/IMGLYCoreUI/**/*.{swift,h,m}'
  
    # If this subfolder depends on IMGLYCore, add a dependency:
    s.dependency   'IMGLYCore', '1.41.1'
  end
  