import 'package:flutter/widgets.dart';

/// Extension to add additional functionality to GlobalKey objects
extension TiltGlobalKeyExtension on GlobalKey {
  /// Get the position of the widget associated with this GlobalKey in the global coordinate system
  Offset get position {
    // Retrieve the RenderBox associated with this GlobalKey
    final RenderBox renderBox = currentContext?.findRenderObject() as RenderBox;

    // Convert the local position (0, 0) to the global coordinate system
    return renderBox.localToGlobal(Offset.zero);
  }

  /// Get the size of the widget associated with this GlobalKey
  Size get size {
    // Retrieve the RenderBox associated with this GlobalKey
    final RenderBox renderBox = currentContext?.findRenderObject() as RenderBox;

    // Return the size of the RenderBox
    return renderBox.size;
  }
}
