  class Vector {
// definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/
//      ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#
    final int x;
//        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//            ^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
    final int y;
//        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//            ^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
  
    const Vector(this.x, this.y);
//        ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`<constructor>`().
//                    ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
//                            ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
  
    static const zero = Vector(0, 0);
//               ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#zero.
//                      ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`<constructor>`().
  
    Vector operator +(Vector other) => Vector(x + other.x, y + other.y);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#
//                  ^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#+().
//                    ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#
//                           ^^^^^ definition local 0
//                                     ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`<constructor>`().
//                                            ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
//                                                ^^^^^ reference local 0
//                                                      ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
//                                                         ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
//                                                             ^^^^^ reference local 0
//                                                                   ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
    Vector operator -() => Vector(-x, -y);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#
//                  ^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#-().
//                         ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`<constructor>`().
//                                 ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
//                                     ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
    int operator [](int index) => index == 0 ? x : y;
//  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//               ^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`[]`().
//                  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                      ^^^^^ definition local 1
//                                ^^^^^ reference local 1
//                                             ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
//                                                 ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
    bool operator <(Vector other) => length < other.length;
//  ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`bool.dart`/bool#
//                ^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`<`().
//                  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#
//                         ^^^^^ definition local 2
//                                   ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`<get>length`.
//                                            ^^^^^ reference local 2
//                                                  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`<get>length`.
  
    int get length => x * x + y * y;
//  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//          ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`<get>length`.
//                    ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
//                        ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
//                            ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
//                                ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`annotations.dart`/override.
    bool operator ==(Object other) =>
//  ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`bool.dart`/bool#
//                ^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`==`().
//                relationship scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#`==`(). implementation reference
//                   ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#
//                          ^^^^^ definition local 3
        other is Vector && other.x == x && other.y == y;
//      ^^^^^ reference local 3
//               ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#
//                         ^^^^^ reference local 3
//                               ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
//                                    ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
//                                         ^^^^^ reference local 3
//                                               ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
//                                                    ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`annotations.dart`/override.
    int get hashCode => Object.hash(x, y);
//  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//          ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`<get>hashCode`.
//          relationship scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#`<get>hashCode`. implementation reference
//                      ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#
//                             ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#hash().
//                                  ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
//                                     ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
  }
  
  class Multiplier {
//      ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Multiplier#
    final int factor;
//        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//            ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Multiplier#factor.
    Multiplier(this.factor);
//  ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Multiplier#`<constructor>`().
//                  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Multiplier#factor.
  
    int call(int value) => value * factor;
//  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//      ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Multiplier#call().
//           ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//               ^^^^^ definition local 4
//                         ^^^^^ reference local 4
//                                 ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Multiplier#factor.
  }
  
  Vector? maybeVector() => null;
//^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#
//        ^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/maybeVector().
  
  int _counter = 0;
//^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//    ^^^^^^^^ definition local 5
  int get counter => _counter;
//^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//        ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/`<get>counter`.
//                   ^^^^^^^^ reference local 5
  set counter(int value) => _counter = value;
//    ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/`<set>counter`.
//            ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                ^^^^^ definition local 6
//                          ^^^^^^^^ reference local 5
//                                     ^^^^^ reference local 6
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`operators.dart`/main().
    var a = const Vector(1, 2);
//      ^ definition local 7
//                ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#`<constructor>`().
    var b = Vector.zero;
//      ^ definition local 8
//          ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#
//                 ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#zero.
    var c = a + b;
//      ^ definition local 9
//          ^ reference local 7
//              ^ reference local 8
    c = -c;
//  ^ reference local 9
//       ^ reference local 9
    print(c[0]);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^ reference local 9
    print(a < b);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^ reference local 7
//            ^ reference local 8
    a += b;
//  ^ reference local 7
//       ^ reference local 8
  
    final doubler = Multiplier(2);
//        ^^^^^^^ definition local 10
//                  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Multiplier#`<constructor>`().
    doubler(4);
//  ^^^^^^^ reference local 10
  
    counter = 5;
//  ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/`<set>counter`.
    counter++;
//  ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/`<get>counter`.
    print(counter);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/`<get>counter`.
  
    Vector? maybe = maybeVector();
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#
//          ^^^^^ definition local 11
//                  ^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/maybeVector().
    maybe ??= a;
//  ^^^^^ reference local 11
//            ^ reference local 7
    print(maybeVector()?.x ?? 0);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/maybeVector().
//                       ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#x.
    print(maybeVector()!.y);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/maybeVector().
//                       ^ reference scip-dart pub dart_test 1.0.0 lib/`operators.dart`/Vector#y.
  
    final includeExtra = DateTime.now().isUtc;
//        ^^^^^^^^^^^^ definition local 12
//                       ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`date_time.dart`/DateTime#
//                                ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`date_time.dart`/DateTime#now().
//                                      ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`date_time.dart`/DateTime#isUtc.
    final list = [
//        ^^^^ definition local 13
      1,
      ...[2, 3],
      ...?null,
      if (includeExtra) 4 else 5,
//        ^^^^^^^^^^^^ reference local 12
      for (var i = 0; i < 3; i++) i * 10,
//             ^ definition local 14
//                    ^ reference local 14
//                           ^ reference local 14
//                                ^ reference local 14
    ];
    final set = {...list};
//        ^^^ definition local 15
//                  ^^^^ reference local 13
    final map = {for (final v in set) v: '$v'};
//        ^^^ definition local 16
//                          ^ definition local 17
//                               ^^^ reference local 15
//                                    ^ reference local 17
//                                         ^ reference local 17
    print(map);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^ reference local 16
  }
  
