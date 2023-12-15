import SwiftUI

@MainActor
@resultBuilder
public enum AssetLibraryBuilder {
  private static func flattenUnnamedGroups(_ components: [AssetLibraryContent]) -> AssetLibraryContent {
    let flattenUnnamedGroups = components.flatMap { component in
      if let group = component as? AssetLibraryGroup<EmptyView> {
        return group.components
      } else {
        return [component]
      }
    }
    return AssetLibraryGroup<EmptyView>(components: flattenUnnamedGroups)
  }

  public static func buildBlock(_ components: AssetLibraryContent...) -> AssetLibraryContent {
    flattenUnnamedGroups(components)
  }

  public static func buildOptional(_ component: AssetLibraryContent?) -> AssetLibraryContent {
    if let component {
      return AssetLibraryGroup<EmptyView>(components: [component])
    } else {
      return AssetLibraryGroup.empty
    }
  }

  public static func buildEither(first component: AssetLibraryContent) -> AssetLibraryContent {
    AssetLibraryGroup<EmptyView>(components: [component])
  }

  public static func buildEither(second component: AssetLibraryContent) -> AssetLibraryContent {
    AssetLibraryGroup<EmptyView>(components: [component])
  }

  public static func buildArray(_ components: [AssetLibraryContent]) -> AssetLibraryContent {
    flattenUnnamedGroups(components)
  }
}

struct AssetLibraryBuilder_Previews: PreviewProvider {
  static var previews: some View {
    defaultAssetLibraryPreviews
  }
}
