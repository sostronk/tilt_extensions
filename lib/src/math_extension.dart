import 'dart:math';

extension TiltMathIntExtension on int {
  String get ordinal {
    // Returns an empty string if the number is less than 1
    if (this < 1) return '';

    // Check if the number is 11th, 12th, or 13th and return 'th'
    if ([this % 100 == 11, this % 100 == 12, this % 100 == 13].contains(true)) {
      return 'th';
    }

    // Returns the ordinal suffix based on the last digit
    switch (this % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }
}

extension TiltMathDoubleExtension on num {
  /// Returns the non-negative value
  num get nonNegative => max(0, this);
}
