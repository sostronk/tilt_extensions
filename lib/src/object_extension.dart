/// Extension to check various properties of an Object type
extension GeneralUtilsObjectExtension on Object? {
  /// Check if the object is null
  bool get isNull => this == null;

  /// Check if the object is not null
  bool get isNotNull => this != null;

  /// Check if the object is null or empty
  bool get isNullOrEmpty =>
      isNull ||
      _isStringObjectEmpty ||
      _isIterableObjectEmpty ||
      _isMapObjectEmpty;

  /// Check if the object is null, empty, or false
  bool get isNullEmptyOrFalse =>
      isNull ||
      _isStringObjectEmpty ||
      _isIterableObjectEmpty ||
      _isMapObjectEmpty ||
      _isBoolObjectFalse;

  /// Check if the object is null, empty, false, or zero
  bool get isNullEmptyFalseOrZero =>
      isNull ||
      _isStringObjectEmpty ||
      _isIterableObjectEmpty ||
      _isMapObjectEmpty ||
      _isBoolObjectFalse ||
      _isNumObjectZero;

  // Check if the object is a string and is empty
  bool get _isStringObjectEmpty =>
      (this is String) ? (this as String).isEmpty : false;

  // Check if the object is an iterable type and is empty
  bool get _isIterableObjectEmpty =>
      (this is Iterable) ? (this as Iterable).isEmpty : false;

  // Check if the object is a map type and is empty
  bool get _isMapObjectEmpty => (this is Map) ? (this as Map).isEmpty : false;

  // Check if the object is a boolean type and is false
  bool get _isBoolObjectFalse => (this is bool) ? !(this as bool) : false;

  // Check if the object is a numerical type and is zero
  bool get _isNumObjectZero => (this is num) ? (this as num) == 0 : false;
}
