import 'package:flutter_test/flutter_test.dart';

import 'package:tilt_extensions/tilt_extensions.dart';

void main() {
  group('Int extension tests', () {
    test('non negative test', () {
      final testMap = {50000: 50000, 1: 1, 0: 0, -1: 0, -50000: 0};
      testMap.forEach((key, value) {
        expect(key.nonNegative, value);
      });
    });

    test('with ordianl test', () {
      final testMap = {
        -5: '',
        0: '',
        1: 'st',
        198579238171: 'st',
        2: 'nd',
        1234124312: 'th',
        3: 'rd',
        958712853: 'rd',
        4: 'th',
        5: 'th',
        6: 'th',
        7: 'th',
        8: 'th',
        9: 'th',
        11: 'th',
        212: 'th',
        846564513: 'th',
        846564533: 'rd',
        895721398457: 'th'
      };
      testMap.forEach((key, value) {
        expect(key.ordinal, value);
      });
    });
  });
  group('Double extension tests', () {
    test('non negative test', () {
      Map<double, double> testMap = {
        50000.7: 50000.7,
        1.5: 1.5,
        0: 0,
        -0.1: 0,
        -1.4: 0,
        -50000.7: 0,
      };
      testMap.forEach((key, value) {
        expect(key.nonNegative, value);
      });
    });
  });

  group('String extension tests', () {
    test('capitalize first', () {
      final testMap = {
        'hello': 'Hello',
        'hello world': 'Hello world',
        'hello Section': 'Hello Section',
        'Hello': 'Hello',
        'Hello World': 'Hello World'
      };
      testMap.forEach((key, value) {
        expect(key.capitalizeFirst, value);
      });
    });

    test('snake case', () {
      final testMap = {
        'hello': 'hello',
        'helloWorld': 'hello_world',
        'Hello': 'hello',
        'HelloWorld': 'hello_world',
        '_HelloWorld': '_hello_world'
      };
      testMap.forEach((key, value) {
        expect(key.snakeCase, value);
      });
    });
  });
}
