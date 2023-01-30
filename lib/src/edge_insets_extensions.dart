import 'package:flutter/rendering.dart';

/// Extension of the EdgeInsets class in Flutter
extension TiltEdgeInsetsExtension on EdgeInsets {
  /// Method to create a copy of this EdgeInsets with specified properties
  EdgeInsets copyWith(
      {double? top, double? bottom, double? left, double? right}) {
    // Return a new EdgeInsets instance with the specified properties
    return EdgeInsets.only(
      // Use the current value of this.top if top is not specified
      top: top ?? this.top,
      // Use the current value of this.bottom if bottom is not specified
      bottom: bottom ?? this.bottom,
      // Use the current value of this.left if left is not specified
      left: left ?? this.left,
      // Use the current value of this.right if right is not specified
      right: right ?? this.right,
    );
  }
}
