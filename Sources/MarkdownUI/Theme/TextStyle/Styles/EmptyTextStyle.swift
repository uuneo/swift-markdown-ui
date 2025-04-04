import Foundation

/// A text style that doesn't apply any text style.
public struct EmptyTextStyle: TextStyle, Sendable {
  /// Creates an empty text style.
  public init() {}

  public func _collectAttributes(in: inout AttributeContainer) {}
}
