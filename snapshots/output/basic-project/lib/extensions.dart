  extension StringExtensions on String {
// definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/
//          ^^^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#
//                              ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
    String get shout => toUpperCase();
//  ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//             ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#`<get>shout`.
//                      ^^^^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#toUpperCase().
  
    bool get isBlank => trim().isEmpty;
//  ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`bool.dart`/bool#
//           ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#`<get>isBlank`.
//                      ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#trim().
//                             ^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#`<get>isEmpty`.
  
    String repeat(int times) => List.filled(times, this).join();
//  ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//         ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#repeat().
//                ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                    ^^^^^ definition local 0
//                              ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`list.dart`/List#
//                                   ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`list.dart`/List#filled().
//                                          ^^^^^ reference local 0
//                                                       ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`iterable.dart`/Iterable#join().
  
    static String empty() => '';
//         ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#empty().
  }
  
  extension<T> on List<T> {
// definition local 1
//          ^ definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/null#[T]
//                ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`list.dart`/List#
//                     ^ reference scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/null#[T]
    T? get secondOrNull => length > 1 ? this[1] : null;
//  ^ reference scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/null#[T]
//         ^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/`<get>secondOrNull`.
//                         ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`list.dart`/List#`<get>length`.
  }
  
  extension NumberParsing on String {
//          ^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/NumberParsing#
//                           ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
    int parseInt() => int.parse(this);
//  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//      ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/NumberParsing#parseInt().
//                    ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                        ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#parse().
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/main().
    'hello'.shout;
//          ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#`<get>shout`.
    '  '.isBlank;
//       ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#`<get>isBlank`.
    'ab'.repeat(3);
//       ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#repeat().
    StringExtensions.empty();
//  ^^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#
//                   ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#empty().
    [1, 2].secondOrNull;
//         ^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/`<get>secondOrNull`.
  
    // explicit extension application
    StringExtensions('hi').repeat(2);
//                         ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/StringExtensions#repeat().
    NumberParsing('42').parseInt();
//                      ^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`extensions.dart`/NumberParsing#parseInt().
  }
  
