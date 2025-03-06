Pod::Spec.new do |s|
  s.name             = "IMGLYUI"
  s.version          = "1.0.0-custom"
  s.summary          = "Minimal aggregator bridging target for IMG.LY modules"
  s.description      = <<-DESC
    This is a minimal bridging pod that depends on IMGLYCore, IMGLYEditor, etc.
    It does not contain the actual source code for those modules.
  DESC
  s.homepage         = "https://your-fork-url"
  s.license          = { :type => "Commercial", :file => "LICENSE.md" }
  s.authors          = { "You" => "you@example.com" }
  
  # Swift version and platform
  s.swift_version    = "5.10"
  s.platform         = :ios, "16.0"

  # Minimal bridging source (a dummy file)
  # Create a dummy Swift file in your repo, e.g. Bridging/IMGLYUI-dummy.swift
  s.source_files     = "Bridging/IMGLYUI-dummy.swift"

  # The aggregator doesn't actually contain submodule code; it references them as dependencies
  s.dependency "IMGLYCore", "1.0.0-custom"
  s.dependency "IMGLYCoreUI", "1.0.0-custom"
  s.dependency "IMGLYCamera", "1.0.0-custom"
  s.dependency "IMGLYEditor", "1.0.0-custom"
  s.dependency "IMGLYVideoEditor", "1.0.0-custom"
  s.dependency "IMGLYDesignEditor", "1.0.0-custom"
  s.dependency "IMGLYPhotoEditor", "1.0.0-custom"
  s.dependency "IMGLYApparelEditor", "1.0.0-custom"
  s.dependency "IMGLYPostcardEditor", "1.0.0-custom"

  # Point to your fork for the aggregator
  s.source = { :git => "https://github.com/ShpendAppbites/IMGLYUI-swift.git", :branch => "main" }
end
