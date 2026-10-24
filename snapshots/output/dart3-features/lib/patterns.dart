  sealed class Shape {}
// definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/
//             ^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Shape#
  
  class Circle extends Shape {
//      ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Circle#
//      relationship scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Shape# implementation
//                     ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Shape#
    final double radius;
//        ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//               ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Circle#radius.
    Circle(this.radius);
//  ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Circle#`<constructor>`().
//              ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Circle#radius.
  }
  
  class Square extends Shape {
//      ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Square#
//      relationship scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Shape# implementation
//                     ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Shape#
    final double side;
//        ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//               ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Square#side.
    Square(this.side);
//  ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Square#`<constructor>`().
//              ^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Square#side.
  }
  
  double area(Shape shape) => switch (shape) {
//^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//       ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/area().
//            ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Shape#
//                  ^^^^^ definition local 0
//                                    ^^^^^ reference local 0
        Circle(radius: final r) => 3.14 * r * r,
//      ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Circle#
//                                        ^ reference local 1
//                                            ^ reference local 1
        Square(:final side) => side * side,
//      ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Square#
//                             ^^^^ reference local 2
//                                    ^^^^ reference local 2
      };
  
  ({String name, int age}) person() => (name: 'Alice', age: 30);
//  ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//               ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                         ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/person().
  
  (int, {String label}) mixed() => (1, label: 'one');
// ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//       ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                      ^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/mixed().
  
  void main() {
//     ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/main().
    final p = person();
//        ^ definition local 3
//            ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/person().
    print('${p.name} ${p.age}');
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//           ^ reference local 3
//                     ^ reference local 3
  
    final m = mixed();
//        ^ definition local 4
//            ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/mixed().
    print('${m.$1} ${m.label}');
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//           ^ reference local 4
//                   ^ reference local 4
  
    final (:name, :age) = person();
//                        ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/person().
    print('$name $age');
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//          ^^^^ reference local 5
//                ^^^ reference local 6
  
    var (a, b) = (1, 2);
    (a, b) = (b, a);
//            ^ reference local 7
//               ^ reference local 8
  
    final list = [1, 2, 3, 4];
//        ^^^^ definition local 9
    switch (list) {
//          ^^^^ reference local 9
      case [final first, ...final rest]:
        print('$first $rest');
//      ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//              ^^^^^ reference local 10
//                     ^^^^ reference local 11
      case []:
        print('empty');
//      ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
    }
  
    final Object? value = {'id': 1, 'tags': ['x']};
//        ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#
//                ^^^^^ definition local 12
    if (value case {'id': int id, 'tags': [String tag]}) {
//      ^^^^^ reference local 12
//                        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                                         ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
      print('$id $tag');
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//            ^^ reference local 13
//                ^^^ reference local 14
    }
  
    final int? nullable = 3;
//        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//             ^^^^^^^^ definition local 15
    if (nullable case final n?) {
//      ^^^^^^^^ reference local 15
      print(n);
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//          ^ reference local 16
    }
  
    final dynamic raw = 3;
//                ^^^ definition local 17
    if (raw case final int asInt as int) {
//      ^^^ reference local 17
//                     ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                                  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
      print(asInt);
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//          ^^^^^ reference local 18
    }
  
    final (int x, int y) = (5, 6);
//         ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
    print(x + y);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^ reference local 19
//            ^ reference local 20
  
    for (final (i, s) in [(1, 'a'), (2, 'b')]) {
      print('$i $s');
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//            ^ reference local 21
//               ^ reference local 22
    }
  
    for (final Circle(:radius) in [Circle(1), Circle(2)]) {
//             ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Circle#
//                                 ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Circle#`<constructor>`().
//                                            ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Circle#`<constructor>`().
      print(radius);
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//          ^^^^^^ reference local 23
    }
  
    print(area(Circle(1)));
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/area().
//             ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`patterns.dart`/Circle#`<constructor>`().
  }
  
