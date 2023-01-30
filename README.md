# Tilt Extensions
Tilt extensions are made for your life simple while coding. It has some helper methods, some boilerplate remover and what not.

We are listing all the extensions here with some documentation :-
## BuildContext

    // Check if the current modal route is active
    context.isCurrentModal
    // Check if the current modal route can be popped
    context.canPopCurrentModal
    // Check if dark mode is enabled
    context.isDarkMode
    // Safely pop the current route
    context.safePop()
    // If you want to do something when pop fails or nothing to pop
    context.safePop(() => doSomething())
    // Access the Navigator associated with the current context
    context.navigator
    // Access the MediaQueryData associated with the current context
    context.mq
    // Access the FocusScopeNode associated with the current context
    context.focusScope
    // Request focus for a given FocusNode
    context.requestFocus(FocusNode  node)
    // Attempt to unfocus the current FocusScopeNode
    context.unfocus()

## EdgeInsets

    // Create a copy of this EdgeInsets with specified properties
    EdgeInsets.zero.copyWith(left: 8.0, right: 3.0, top: 4.0, bottom: 2.0);
 
 ## Function
 

    // The addAsPostFrameCallback method is used to register a callback function to be executed after the framework has finished rendering the current frame.
    ((){
        doSomethingAfter();
    }).addAsPostFrameCallback()
## Providers

    // SetState on providers in widget
    notifierProvider.setState(widgetRef, value);
    // SetState on providers in notifiers and async notifiers
    notifierProvider.setStateWithReader(ref, value);
## List

    // Swap two index values in list
    // listA = [0,13,9,5]
    // index1 = 1;
    // index2 = 3;
    listA.swap(index1, index2);
    // listA will be [0,5,9,13]
    listA.reverseIf(true)
    // listA will be [13,9,5,0]
    // random getter can give any random value from list
    listA.random
    // safeRandom will give null if list is empty else any random item from list
    listA.safeRandom
  ## num & int
  

    // Returns the non-negative value
    5.nonNegative = 5
    (-5).nonNegative = 0
    0.nonNegative = 0
    // Return ordinal for int
    1.ordinal = st
    2.ordinal = nd
    11.ordinal = th
    32.ordinal = nd
## String

    // Capitalize the first letter of the string
    helloWorld.capitalizeFirst = 'HelloWorld'
    // Check if the string is a valid email address
    'hello@hello.ac.in'.isValidEmail = true
    'hello'.isValidEmail = false
    // Convert the string to snake case
    'helloWorld'.snakeCase = 'hello_world'
    // Check if the string is all uppercase
    'hello'.isUpperCase = false
    'HELLO'.isUpperCase = true
    '  '.isEmptyOrWhitespace = true
    'he.  '.isEmptyOrWhitespace = false
## Object

    // Check if the object is null, empty, zero, false or not
    object.isNull
    object.isNotNull
    object.isNullOrEmpty
    object.isNullEmptyOrFalse
    object.isNullEmptyFalseOrZero
## GlobalKey

    // Get size and global position of widget from globalKey
    key.size
    key.position
## Firebase Errors

    // Get firebase error to user showable string
    'app-deleted'.getExceptionMessage() = 'The database was not found.'
