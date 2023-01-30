/// Extension for string manipulation
extension StringExtension on String {
  /// Capitalize the first letter of the string
  String get capitalizeFirst {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  /// Check if the string is a valid email address
  bool get isValidEmail {
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regex = RegExp(pattern);

    return regex.hasMatch(this);
  }

  /// Convert the string to snake case
  String get snakeCase {
    var sb = StringBuffer();
    var first = true;
    for (var rune in runes) {
      var char = String.fromCharCode(rune);
      if (char.isUpperCase && !first) {
        if (char != '_') {
          sb.write('_');
        }
        sb.write(char.toLowerCase());
      } else {
        if (char != '_') {
          first = false;
        }
        sb.write(char.toLowerCase());
      }
    }

    return sb.toString();
  }

  /// Check if the string is all uppercase
  bool get isUpperCase => this == toUpperCase();

  /// Check if the string is empty or contains only whitespaces
  bool get isEmptyOrWhitespace => isEmpty || trim().isEmpty;
}
