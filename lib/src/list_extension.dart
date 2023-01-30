/// extension on List<T> to add extra functionality to a list
extension TiltListExtension<T> on List<T> {
  /// function to swap two elements in a list by their indices
  void swap(int index1, int index2) {
    // store the first element in a temp variable
    final temp = this[index1];
    // assign the value of the second element to the first
    this[index1] = this[index2];
    // assign the value stored in temp to the second element
    this[index2] = temp;
  }

  /// get a random element from the list
  T get random {
    // shuffle the list and return the first element
    return (this..shuffle()).first;
  }

  /// get a random element from the list with a null check
  T? get safeRandom {
    // if the list is empty, return null
    if (isEmpty) {
      return null;
    }

    // return a random element from the list
    return random;
  }

  /// reverse the list based on the value of reverse flag
  List<T> reverseIf(bool reverse) {
    /// if reverse flag is true, return a reversed list
    /// else return the original list
    return reverse ? reversed.toList() : this;
  }
}
