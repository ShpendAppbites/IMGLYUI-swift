Pod::Spec.new do |s|
    s.name         = "IMGLYUI"
    s.version      = "5.10-custom"
    s.summary      = "Umbrella pod for IMG.LY UI – aggregates all IMG.LY modules."
    s.homepage     = "https://img.ly"
    s.license      = { :type => "Commercial", :file => "LICENSE.md" }
    s.authors      = { "IMG.LY GmbH" => "contact@img.ly" }
    
    # This source is set to your fork so that the umbrella pod pulls the correct podspecs.
    s.source       = { :git => "https://github.com/ShpendAppbites/IMGLYUI-swift.git", :branch => "main" }
    s.platform     = :ios, "16.0"
    s.requires_arc = true
  
    # Declare dependencies on all the individual IMG.LY modules with your custom version.
    s.dependency "IMGLYCore",          "5.10-custom"
    s.dependency "IMGLYCoreUI",        "5.10-custom"
    s.dependency "IMGLYCamera",        "5.10-custom"
    s.dependency "IMGLYEditor",        "5.10-custom"
    s.dependency "IMGLYDesignEditor",  "5.10-custom"
    s.dependency "IMGLYVideoEditor",   "5.10-custom"
    s.dependency "IMGLYPhotoEditor",   "5.10-custom"   # If used
    s.dependency "IMGLYApparelEditor", "5.10-custom"   # If used
    s.dependency "IMGLYPostcardEditor","5.10-custom"   # If used
  end
  