  import 'dart:math' as math;
// definition scip-dart pub dart_test 1.0.0 lib/directives/`directives.dart`/
//       ^^^^^^^^^^^ reference scip-dart pub dart:math 3.13.0 dart:math/
//                      ^^^^ definition scip-dart pub dart_test 1.0.0 lib/directives/`directives.dart`/math.
  import 'package:test/test.dart' show test;
//       ^^^^^^^^^^^^^^^^^^^^^^^^ reference scip-dart pub test 1.24.3 lib/`test.dart`/
//                                     ^^^^ reference scip-dart pub test_core 0.5.3 lib/`scaffolding.dart`/test().
  import '../more.dart' as more;
//       ^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/
//                         ^^^^ definition scip-dart pub dart_test 1.0.0 lib/directives/`directives.dart`/more.
  import '../other.dart' hide Bar;
//       ^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/
//                            ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#
  import '../relationships.dart' show Dog;
//       ^^^^^^^^^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/
//                                    ^^^ reference scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Dog#
  export '../main.dart' show fib;
//       ^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/
//                           ^^^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/fib().
  part 'directives_part.dart';
//     ^^^^^^^^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/directives/`directives_part.dart`/
  
  void useImports() {
//     ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/directives/`directives.dart`/useImports().
    math.max(1, 2);
//  ^^^^ reference scip-dart pub dart_test 1.0.0 lib/directives/`directives.dart`/math.
//       ^^^ reference scip-dart pub dart:math 3.13.0 dart:math/max().
    test('name', () {});
//  ^^^^ reference scip-dart pub test_core 0.5.3 lib/`scaffolding.dart`/test().
    more.AnimalType.cat;
//  ^^^^ reference scip-dart pub dart_test 1.0.0 lib/directives/`directives.dart`/more.
//       ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//                  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#cat.
    Foo;
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#
    Dog;
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Dog#
  }
  
