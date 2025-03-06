Pod::Spec.new do |s|
  s.name             = "IMGLYUI"
  s.version          = "1.0.0-custom"       # Use a semantic version (e.g. 1.0.0-custom)
  s.summary          = "Your custom UI for IMGLY"
  s.description      = "Fork with UI tweaks"
  s.homepage         = "https://github.com/ShpendAppbites/IMGLYUI-swift"
  s.license          = { :type => "MIT" }   # Or the correct license
  s.authors          = { "You" => "you@example.com" }
  
  # Use Swift 5.10 if your code relies on newer Swift features
  s.swift_version    = "5.10"
  s.swift_versions   = "5.10"
  
  # iOS platform
  s.platform         = :ios, "16.0"
  
  # Source pointing to your fork
  s.source           = { :git => "https://github.com/ShpendAppbites/IMGLYUI-swift.git", :branch => "main" }

  # Optional: These patterns can catch all files if your code is arranged properly
  s.source_files     = "Sources/**/*.{swift,h,m}"
  s.resources        = ["Sources/**/*.xcassets", "Sources/**/*.xib"]

  # -------------------------
  # Subspec: Core
  # -------------------------
  s.subspec "Core" do |core|
    # Only the files for IMGLYCore
    core.source_files = "Sources/IMGLYCore/**/*.{swift,h,m}"
    
    # If you want to preserve the old module name "IMGLYCore":
    # core.module_name = "IMGLYCore"
  end

  # -------------------------
  # Subspec: CoreUI
  # -------------------------
  s.subspec "CoreUI" do |coreui|
    # Files for IMGLYCoreUI
    coreui.source_files = "Sources/IMGLYCoreUI/**/*.{swift,h,m}"
    
    # If it depends on the Core subspec
    coreui.dependency    "IMGLYUI/Core"
    
    # If you want the old module name:
    # coreui.module_name = "IMGLYCoreUI"
  end

  # -------------------------
  # Subspec: UI
  # -------------------------
  s.subspec "UI" do |ui|
    # Files for the main UI portion
    ui.source_files = "Sources/IMGLYUI/**/*.{swift,h,m}"
    
    # If this layer depends on CoreUI
    ui.dependency   "IMGLYUI/CoreUI"
    
    # If you want the old module name:
    # ui.module_name = "IMGLYUI"
  end
end
