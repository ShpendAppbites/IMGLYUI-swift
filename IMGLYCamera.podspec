Pod::Spec.new do |s|
    s.name         = 'IMGLYCore'
    s.version      = '1.41.1'  # Match the version you need
    s.summary      = 'IMGLYCamera submodule'
    s.description  = 'Core functionality for IMGLY.'
    s.homepage     = 'https://github.com/ShpendAppbites/IMGLY-swift'
    s.license      = 'MIT'
    s.author       = { 'You' => 'you@example.com' }
  
    s.swift_version = '5.0'
    s.platform     = :ios, '16.0'
  
    # The repo link and tag/branch
    s.source       = {
      :git => 'https://github.com/ShpendAppbites/IMGLY-swift.git',
      :tag => '1.41.1'    # or :branch => 'main'
    }
  
    # This ensures Swift sees it as `import IMGLYCore`
    s.module_name  = 'IMGLYCamera'
  
    # Only compile code under Sources/IMGLYCore/
    s.source_files = 'Sources/IMGLYCamera/**/*.{swift,h,m}'
    
    # If there are images, nibs, or other resources in this folder:
    # s.resources    = 'Sources/IMGLYCore/**/*.{xcassets,xib,storyboard}'
    
    # If IMGLYCore has no other internal dependencies, you're done here
  end
  