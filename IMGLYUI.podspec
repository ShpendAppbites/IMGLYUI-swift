Pod::Spec.new do |s|
    s.name             = 'IMGLYUI'
    s.version          = '1.0-custom'
    s.summary          = 'Your custom UI for IMGLY'
    s.description      = 'Fork with UI tweaks'
    s.homepage         = 'https://github.com/ShpendAppbites/IMGLYUI-swift'
    s.license          = 'MIT'
    s.author           = { 'You' => 'you@example.com' }
    s.swift_version    = '5.0'  # match the code
    s.platform         = :ios, '16.0'
  # Adjust these paths for your code location
  s.source_files     = 'Sources/**/*.{swift,h,m}'
  s.resources        = ['Sources/**/*.xcassets', 'Sources/**/*.xib'] # if any
    # Point to your repo
    s.source           = { :git => 'https://github.com/ShpendAppbites/IMGLYUI-swift.git', :branch => 'main' }
  
    # Subspec 1: IMGLYCore
  s.subspec 'Core' do |core|
    core.source_files = 'Sources/IMGLYCore/**/*.{swift,h,m}'
    # core.module_name = 'IMGLYCore'   # if you want to preserve the old import name
  end

  # Subspec 2: IMGLYCoreUI
  s.subspec 'CoreUI' do |coreui|
    coreui.source_files = 'Sources/IMGLYCoreUI/**/*.{swift,h,m}'
    # coreui.module_name = 'IMGLYCoreUI'
    # If CoreUI depends on Core, add:
    # coreui.dependency 'IMGLYUI/Core'
  end

  # Subspec 3: IMGLYUI (the actual UI part)
  s.subspec 'UI' do |ui|
    ui.source_files = 'Sources/IMGLYUI/**/*.{swift,h,m}'
    # ui.module_name = 'IMGLYUI'
    # If UI depends on CoreUI, add:
    # ui.dependency 'IMGLYUI/CoreUI'
  end
end
  