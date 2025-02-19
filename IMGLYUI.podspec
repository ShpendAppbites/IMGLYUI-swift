Pod::Spec.new do |s|
    s.name             = 'IMGLYUI'
    s.version          = '1.41.1'
    s.summary          = 'Your custom UI for IMGLY'
    s.description      = 'Fork with UI tweaks'
    s.homepage         = 'https://github.com/ShpendAppbites/IMGLYUI-swift'
    s.license          = 'MIT'
    s.author           = { 'You' => 'you@example.com' }
    s.swift_version    = '5.0'  # match the code
    s.platform         = :ios, '16.0'
  
    # Point to your repo
    s.source           = { :git => 'https://github.com/ShpendAppbites/IMGLYUI-swift.git', :tag => '1.0.0' }
  
    # Adjust these paths for your code location
    s.source_files     = 'Sources/**/*.{swift,h,m}'
    s.resources        = ['Sources/**/*.xcassets', 'Sources/**/*.xib'] # if any
  end
  