import Foundation

/// A text style that adjusts the font to use alternate glyphs for capital letters.
@available(iOS 15.0, *)
public struct FontCapsVariant: TextStyle, Sendable {
  private let capsVariant: FontProperties.CapsVariant

  /// Creates a font caps variant text style.
  /// - Parameter capsVariant: The font caps variant.
  public init(_ capsVariant: FontProperties.CapsVariant) {
    self.capsVariant = capsVariant
  }

  public func _collectAttributes(in attributes: inout AttributeContainer) {
    attributes.fontProperties?.capsVariant = self.capsVariant
  }
}
