import 'package:flutter/widgets.dart';

/// This is an extension method for Function that adds a post frame callback to the WidgetsBinding instance in Flutter.
/// The method adds a function to the list of callbacks that will be executed after the framework has completed rendering a frame.
/// The method calls the "call" method of the Function that it extends, allowing the original function to be executed as a post-frame callback.
extension WidgetBindingPostFrameCallback on Function? {
  /// The addAsPostFrameCallback method is used to register a callback function to be executed
  /// after the framework has finished rendering the current frame.
  void addAsPostFrameCallback() {
    // Access the singleton instance of the WidgetsBinding object
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // Call the callback function, but only if it is not null
      this?.call();
    });
  }
}
