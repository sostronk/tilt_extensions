import 'package:flutter/material.dart';

/// Extension of the BuildContext class in Flutter
extension TiltContextExtension on BuildContext {
  /// Property to check if the current modal route is active
  bool get isCurrentModal => ModalRoute.of(this)?.isCurrent ?? false;

  /// Property to check if the current modal route can be popped
  bool get canPopCurrentModal => ModalRoute.of(this)?.canPop ?? false;

  /// Property to check if dark mode is enabled
  bool get isDarkMode => mq.platformBrightness == Brightness.dark;

  /// Method to safely pop the current route
  bool safePop({VoidCallback? onFailure}) {
    // Check if the current route can be popped
    if (navigator.canPop()) {
      // Pop the current route
      navigator.pop();

      // Return true if the route was popped
      return true;
    } else {
      // Call the onFailure callback if the route can't be popped
      onFailure?.call();

      // Return false if the route can't be popped
      return false;
    }
  }

  /// Property to access the Navigator associated with the current context
  NavigatorState get navigator => Navigator.of(this);

  /// Property to access the MediaQueryData associated with the current context
  MediaQueryData get mq => MediaQuery.of(this);

  /// Property to access the FocusScopeNode associated with the current context
  FocusScopeNode get focusScope => FocusScope.of(this);

  /// Method to request focus for a given FocusNode
  void requestFocus(FocusNode node) => focusScope.requestFocus(node);

  /// Method to attempt to unfocus the current FocusScopeNode
  Future<void> unfocus() async {
    // Check if there is a focus node with primary focus
    if (!focusScope.hasPrimaryFocus) {
      // Unfocus the current focus node
      focusScope.unfocus();

      // Wait 200 milliseconds before returning
      await Future.delayed(const Duration(milliseconds: 200));
    }
  }
}
