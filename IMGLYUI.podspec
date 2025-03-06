Pod::Spec.new do |s|
  s.name         = "IMGLYUI"
  s.version      = "1.0.0-custom"
  s.summary      = "An umbrella pod aggregating the IMG.LY iOS modules."
  s.description  = <<-DESC
    This pod aggregates all the IMG.LY iOS modules, including Core, CoreUI, Camera, Editor,
    DesignEditor, VideoEditor, PhotoEditor, ApparelEditor, and PostcardEditor. It provides a single
    dependency for projects that wish to integrate the full IMG.LY UI.
  DESC
  s.homepage     = "https://github.com/ShpendAppbites/IMGLYUI-swift"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.authors      = { "Your Name" => "you@example.com" }
  
  # Use Swift 5.10 features (update this if your code actually needs 5.0)
  s.swift_version    = "5.10"
  s.swift_versions   = "5.10"
  
  # Declare the supported platform using standard shorthand syntax.
  s.platform     = :ios, "16.0"
  
  # Set the source to your fork on GitHub (using branch or tag; for production, a tag is preferred)
  s.source       = { :git => "https://github.com/ShpendAppbites/IMGLYUI-swift.git", :branch => "main" }
  
  # Define subspecs for each module.
  
  # Subspec: Core
  s.subspec "Core" do |core|
    core.summary     = "Core functionality for IMG.LY editors."
    core.source_files = "Sources/IMGLYCore/**/*.{swift,h,m}"
  end

  # Subspec: CoreUI
  s.subspec "CoreUI" do |coreui|
    coreui.summary      = "Core UI components for IMG.LY editors."
    coreui.source_files = "Sources/IMGLYCoreUI/**/*.{swift,h,m}"
    coreui.resources    = "Sources/IMGLYCoreUI/Assets.xcassets"
    coreui.dependency   "IMGLYUI/Core"
  end

  # Subspec: Camera
  s.subspec "Camera" do |camera|
    camera.summary      = "Camera functionality for IMG.LY editors."
    camera.source_files = "Sources/IMGLYCamera/**/*.{swift,h,m}"
    camera.resources    = "Sources/IMGLYCamera/Assets.xcassets"
    camera.dependency   "IMGLYUI/CoreUI"
  end

  # Subspec: Editor
  s.subspec "Editor" do |editor|
    editor.summary      = "Core editor functionality for IMG.LY editors."
    editor.source_files = "Sources/IMGLYEditor/**/*.{swift,h,m}"
    editor.resources    = "Sources/IMGLYEditor/Assets.xcassets"
    editor.dependency   "IMGLYUI/Camera"
  end

  # Subspec: DesignEditor
  s.subspec "DesignEditor" do |design|
    design.summary      = "Design editor module for IMG.LY editors."
    design.source_files = "Sources/IMGLYDesignEditor/**/*.{swift,h,m}"
    design.resources    = "Sources/IMGLYDesignEditor/Resources/*"
    design.dependency   "IMGLYUI/Editor"
  end

  # Subspec: VideoEditor
  s.subspec "VideoEditor" do |video|
    video.summary      = "Video editor module for IMG.LY editors."
    video.source_files = "Sources/IMGLYVideoEditor/**/*.{swift,h,m}"
    video.resources    = "Sources/IMGLYVideoEditor/Resources/*"
    video.dependency   "IMGLYUI/Editor"
  end

  # Subspec: PhotoEditor
  s.subspec "PhotoEditor" do |photo|
    photo.summary      = "Photo editor module for IMG.LY editors."
    photo.source_files = "Sources/IMGLYPhotoEditor/**/*.{swift,h,m}"
    photo.resources    = "Sources/IMGLYPhotoEditor/Resources/*"
    photo.dependency   "IMGLYUI/Editor"
  end

  # Subspec: ApparelEditor
  s.subspec "ApparelEditor" do |apparel|
    apparel.summary      = "Apparel editor module for IMG.LY editors."
    apparel.source_files = "Sources/IMGLYApparelEditor/**/*.{swift,h,m}"
    apparel.resources    = "Sources/IMGLYApparelEditor/Resources/*"
    apparel.dependency   "IMGLYUI/Editor"
  end

  # Subspec: PostcardEditor
  s.subspec "PostcardEditor" do |postcard|
    postcard.summary      = "Postcard editor module for IMG.LY editors."
    postcard.source_files = "Sources/IMGLYPostcardEditor/**/*.{swift,h,m}"
    postcard.resources    = "Sources/IMGLYPostcardEditor/Resources/*"
    postcard.dependency   "IMGLYUI/Editor"
  end
end
