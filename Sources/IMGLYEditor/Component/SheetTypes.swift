import IMGLYEngine
import SwiftUI

public protocol SheetType {
  var style: SheetStyle { get }
}

protocol SheetTypeForDesignBlock: SheetType {
  var id: DesignBlockID { get }
}

public enum SheetTypes {
  struct Custom: SheetType {
    let style: SheetStyle
    let content: () -> any View
  }
}

public extension SheetTypes {
  struct LibraryAdd: SheetType {
    public let style: SheetStyle
    let content: () -> any View
  }

  struct LibraryReplace: SheetType {
    public let style: SheetStyle
    let content: () -> any View
  }

  struct Voiceover: SheetType {
    public let style: SheetStyle
  }

  struct Reorder: SheetType {
    public let style: SheetStyle
  }

  struct Adjustments: SheetTypeForDesignBlock {
    public let style: SheetStyle
    let id: DesignBlockID
  }

  struct Filter: SheetTypeForDesignBlock {
    public let style: SheetStyle
    let id: DesignBlockID
  }

  struct Effect: SheetTypeForDesignBlock {
    public let style: SheetStyle
    let id: DesignBlockID
  }

  struct Blur: SheetTypeForDesignBlock {
    public let style: SheetStyle
    let id: DesignBlockID
  }

  struct Crop: SheetTypeForDesignBlock {
    public let style: SheetStyle
    let id: DesignBlockID
  }

  struct Layer: SheetType {
    public let style: SheetStyle
  }

  struct FormatText: SheetType {
    public let style: SheetStyle
  }

  struct Shape: SheetType {
    public let style: SheetStyle
  }

  struct FillStroke: SheetType {
    public let style: SheetStyle
  }

  struct Volume: SheetType {
    public let style: SheetStyle
  }
}

public extension SheetType where Self == SheetTypes.LibraryAdd {
  static func libraryAdd(
    style: SheetStyle = .addAsset(),
    @ViewBuilder content: @escaping () -> any View
  ) -> Self {
    Self(style: style, content: content)
  }

  @MainActor
  static func libraryAdd(
    _ title: String,
    style: SheetStyle = .addAsset(),
    @AssetLibraryBuilder content: @escaping () -> AssetLibraryContent
  ) -> Self {
    Self(style: style, content: { AssetLibraryTab(title, content: content) { _ in EmptyView() } })
  }
}

public extension SheetType where Self == SheetTypes.LibraryReplace {
  static func libraryReplace(
    style: SheetStyle = .default(),
    @ViewBuilder content: @escaping () -> any View
  ) -> Self {
    Self(style: style, content: content)
  }

  @MainActor
  static func libraryReplace(
    _ title: String,
    style: SheetStyle = .default(),
    @AssetLibraryBuilder content: @escaping () -> AssetLibraryContent
  ) -> Self {
    Self(style: style, content: { AssetLibraryTab(title, content: content) { _ in EmptyView() } })
  }
}

public extension SheetType where Self == SheetTypes.Voiceover {
  static func voiceover(style: SheetStyle = .only(detent: .imgly.medium)) -> Self { Self(style: style) }
}

public extension SheetType where Self == SheetTypes.Reorder {
  static func reorder(style: SheetStyle = .only(detent: .imgly.medium)) -> Self { Self(style: style) }
}

public extension SheetType where Self == SheetTypes.Adjustments {
  static func adjustments(style: SheetStyle = .only(detent: .imgly.medium), id: DesignBlockID) -> Self {
    Self(style: style, id: id)
  }
}

public extension SheetType where Self == SheetTypes.Filter {
  static func filter(style: SheetStyle = .only(detent: .imgly.tiny), id: DesignBlockID) -> Self {
    Self(style: style, id: id)
  }
}

public extension SheetType where Self == SheetTypes.Effect {
  static func effect(style: SheetStyle = .only(detent: .imgly.tiny), id: DesignBlockID) -> Self {
    Self(style: style, id: id)
  }
}

public extension SheetType where Self == SheetTypes.Blur {
  static func blur(style: SheetStyle = .only(detent: .imgly.tiny), id: DesignBlockID) -> Self {
    Self(style: style, id: id)
  }
}

public extension SheetType where Self == SheetTypes.Crop {
  static func crop(
    style: SheetStyle = .default(detent: .imgly.small, detents: [.imgly.small, .imgly.large]),
    id: DesignBlockID
  ) -> Self {
    Self(style: style, id: id)
  }
}

public extension SheetType where Self == SheetTypes.Layer {
  static func layer(style: SheetStyle = .only(detent: .imgly.medium)) -> Self { Self(style: style) }
}

public extension SheetType where Self == SheetTypes.FormatText {
  static func formatText(style: SheetStyle = .only(detent: .imgly.medium)) -> Self { Self(style: style) }
}

public extension SheetType where Self == SheetTypes.Shape {
  static func shape(style: SheetStyle = .default(detent: .imgly.small, detents: [.imgly.tiny, .imgly.small]))
    -> Self { Self(style: style) }
}

public extension SheetType where Self == SheetTypes.FillStroke {
  static func fillStroke(style: SheetStyle = .default()) -> Self { Self(style: style) }
}

public extension SheetType where Self == SheetTypes.Volume {
  static func volume(style: SheetStyle = .only(detent: .imgly.tiny)) -> Self { Self(style: style) }
}
