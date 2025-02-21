import IMGLYEngine
import SwiftUI

struct DockItemsKey: EnvironmentKey {
  static let defaultValue: Dock.Items? = nil
}

struct DockModificationsKey: EnvironmentKey {
  static let defaultValue: Dock.Modifications? = nil
}

@_spi(Internal) public extension EnvironmentValues {
  var imglyDockItems: Dock.Items? {
    get { self[DockItemsKey.self] }
    set { self[DockItemsKey.self] = newValue }
  }

  var imglyDockModifications: Dock.Modifications? {
    get { self[DockModificationsKey.self] }
    set { self[DockModificationsKey.self] = newValue }
  }
}

/// A namespace for the dock component.
public enum Dock {}

public extension Dock {
  /// An interface for dock item components.
  protocol Item: EditorComponent where Context == Dock.Context {}
  /// A builder for building arrays of dock Items.
  typealias Builder = ArrayBuilder<any Item>
  /// A modifier for modifying arrays of dock items.
  typealias Modifier = ArrayModifier<any Item>

  /// The context of dock components.
  struct Context: EditorContext {
    /// The engine of the current editor.
    public let engine: Engine
    public let eventHandler: EditorEventHandler
    /// The asset library configured with `.imgly.assetLibrary` view modifier.
    public let assetLibrary: any AssetLibrary
  }

  /// A closure to build an array of dock items.
  typealias Items = Context.SendableTo<[any Item]>
  /// A closure to modify an array of dock items.
  typealias Modifications = @Sendable @MainActor (_ context: Context, _ items: Modifier) throws -> Void
  /// A button dock item component.
  typealias Button = EditorComponents.Button
}

extension Dock.Button: Dock.Item where Context == Dock.Context {}
