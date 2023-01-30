import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Extension for NotifierProvider to provide setState method
extension NotifierExtensionOnNotifier<A> on NotifierProvider<Notifier<A>, A> {
  /// Sets the state of the Notifier<A> object
  void setState(WidgetRef ref, A value) {
    // Read the Notifier<A> object using the WidgetRef and update its state
    ref.read(notifier).state = value;
  }

  /// Sets the state of the Notifier<A> object using Ref
  void setStateWithReader(Ref ref, A value) {
    // Read the Notifier<A> object using the Ref and update its state
    ref.read(notifier).state = value;
  }
}

/// Extension for AutoDisposeNotifierProvider to provide setState method
extension AutoDisposeNotifierExtensionOnNotifier<A>
    on AutoDisposeNotifierProvider<AutoDisposeNotifier<A>, A> {
  /// Sets the state of the AutoDisposeNotifier<A> object
  void setState(WidgetRef ref, A value) {
    // Read the AutoDisposeNotifier<A> object using the WidgetRef and update its state
    ref.read(notifier).state = value;
  }

  /// Sets the state of the AutoDisposeNotifier<A> object using Ref
  void setStateWithReader(Ref ref, A value) {
    // Read the AutoDisposeNotifier<A> object using the Ref and update its state
    ref.read(notifier).state = value;
  }
}

/// Extension class for NotifierProviderFamily<FamilyNotifier<A, B>, A, B>
extension NotifierFamilyExtensionOnNotifier<A, B>
    on NotifierProviderFamily<FamilyNotifier<A, B>, A, B> {
  /// Method to set state on FamilyNotifier with the help of WidgetRef and argument B
  void setState(WidgetRef ref, A value, B arg) {
    // Read the notifier using WidgetRef and passing argument B to the NotifierProviderFamily
    ref.read(this(arg).notifier).state = value;
  }

  /// Method to set state on FamilyNotifier with the help of Ref and argument B
  void setStateWithReader(Ref ref, A value, B arg) {
    // Read the notifier using Ref and passing argument B to the NotifierProviderFamily
    ref.read(this(arg).notifier).state = value;
  }
}

/// Extension class for AutoDisposeNotifierProviderFamily<AutoDisposeFamilyNotifier<A, B>, A, B>
extension AutoDisposeNotifierFamilyExtensionOnNotifier<A, B>
    on AutoDisposeNotifierProviderFamily<AutoDisposeFamilyNotifier<A, B>, A,
        B> {
  /// Method to set state on AutoDisposeFamilyNotifier with the help of WidgetRef and argument B
  void setState(WidgetRef ref, A value, B arg) {
    // Read the notifier using WidgetRef and passing argument B to the AutoDisposeNotifierProviderFamily
    ref.read(this(arg).notifier).state = value;
  }

  /// Method to set state on AutoDisposeFamilyNotifier with the help of Ref and argument B
  void setStateWithReader(Ref ref, A value, B arg) {
    // Read the notifier using Ref and passing argument B to the AutoDisposeNotifierProviderFamily
    ref.read(this(arg).notifier).state = value;
  }
}

/// Extension to add or remove elements from ListNotifier
extension ListNotifierExtensionOnNotifierProvider<T>
    on NotifierProvider<Notifier<List<T>>, List<T>> {
  /// Adds an element to the state of the ListNotifier
  void addToState(WidgetRef ref, T value) {
    // Access the state of the notifier and add the new value to it
    ref.read(notifier).state = [...ref.read(this), value];
  }

  /// Adds an element to the state of the ListNotifier using a Reader
  void addToStateWithReader(Ref ref, T value) {
    // Access the state of the notifier and add the new value to it
    ref.read(notifier).state = [...ref.read(this), value];
  }

  /// Removes an element from the state of the ListNotifier
  void removeFromState(WidgetRef ref, T value) {
    // Access the state of the notifier and remove the specified value from it
    ref.read(notifier).state =
        ref.read(this).where((element) => element != value).toList();
  }

  /// Removes an element from the state of the ListNotifier using a Reader
  void removeFromStateWithReader(Ref ref, T value) {
    // Access the state of the notifier and remove the specified value from it
    ref.read(notifier).state =
        ref.read(this).where((element) => element != value).toList();
  }
}

class BaseNotifier<T> extends Notifier<T> {
  final T startValue;
  BaseNotifier(this.startValue);

  @override
  T build() => startValue;
}

class BaseDisposeNotifier<T> extends AutoDisposeNotifier<T> {
  final T startValue;
  BaseDisposeNotifier(this.startValue);

  @override
  T build() => startValue;
}

class BaseDisposeFamiliyNotifier<T1, T2>
    extends AutoDisposeFamilyNotifier<T1, T2> {
  final T1 startValue;
  BaseDisposeFamiliyNotifier(this.startValue);

  @override
  T1 build(T2 arg) => startValue;
}

class BaseFamiliyNotifier<T1, T2> extends FamilyNotifier<T1, T2> {
  final T1 startValue;
  BaseFamiliyNotifier(this.startValue);

  @override
  T1 build(T2 arg) => startValue;
}
