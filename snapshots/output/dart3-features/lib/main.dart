  (String, int) userInfo(Map<String, dynamic> json) {
// definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/
// ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//         ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//              ^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/userInfo().
//                       ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`map.dart`/Map#
//                           ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                                            ^^^^ definition local 0
    return (json['name'] as String, json['height'] as int);
//          ^^^^ reference local 0
//                          ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                                  ^^^^ reference local 0
//                                                    ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
  }
  
  void parser(int charCode) {
//     ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/parser().
//            ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                ^^^^^^^^ definition local 1
    const slash = 1;
//        ^^^^^ definition local 2
    const star = 2;
//        ^^^^ definition local 3
    const plus = 3;
//        ^^^^ definition local 4
    const minus = 4;
//        ^^^^^ definition local 5
  
    final nextCharCode = 'a';
//        ^^^^^^^^^^^^ definition local 6
    const digit0 = 0;
//        ^^^^^^ definition local 7
    const digit9 = 9;
//        ^^^^^^ definition local 8
  
    void skipComment() {}
//       ^^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/skipComment().
    void operatorFn(int charCode) {}
//       ^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/operatorFn().
//                  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                      ^^^^^^^^ definition local 9
    void number() {}
//       ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/number().
    void invalid() {}
//       ^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/invalid().
  
    switch (charCode) {
//          ^^^^^^^^ reference local 1
      case slash when nextCharCode == slash:
//         ^^^^^ reference local 2
//                    ^^^^^^^^^^^^ reference local 6
//                                    ^^^^^ reference local 2
        skipComment();
//      ^^^^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/skipComment().
  
      case slash || star || plus || minus:
//         ^^^^^ reference local 2
//                  ^^^^ reference local 3
//                          ^^^^ reference local 4
//                                  ^^^^^ reference local 5
        operatorFn(charCode);
//      ^^^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/operatorFn().
//                 ^^^^^^^^ reference local 1
  
      case >= digit0 && <= digit9:
//            ^^^^^^ reference local 7
//                         ^^^^^^ reference local 8
        number();
//      ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/number().
  
      default:
        invalid();
//      ^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/invalid().
    }
  }
  
  const six = 6;
//      ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/six.
  const msg = 'Feeling the Monday blues?';
//      ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/msg.
  String describeDate(DateTime dt) {
//^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//       ^^^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/describeDate().
//                    ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`date_time.dart`/DateTime#
//                             ^^ definition local 10
    const one = 1;
//        ^^^ definition local 11
    return switch (dt.weekday) {
//                 ^^ reference local 10
//                    ^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`date_time.dart`/DateTime#`<get>weekday`.
      one => 'Feeling the Monday blues?',
//    ^^^ reference local 11
      7 || six => 'Enjoy the weekend!',
//         ^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/six.
      _ => 'Hang in there.',
    };
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/main().
    var (String name, int height) = userInfo({'name': 'Michael', 'height': 180});
//       ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//              ^^^^ definition local 12
//                    ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                        ^^^^^^ definition local 13
//                                  ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/userInfo().
    print('User $name is $height cm tall.');
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//               ^^^^ reference local 12
//                        ^^^^^^ reference local 13
  
    final json = {'name': 'Michael', 'height': 180};
//        ^^^^ definition local 14
    if (json case {'name': 'Michael', 'height': int h}) {
//      ^^^^ reference local 14
//                                              ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                                                  ^ definition local 15
      print('Michael is $h cm tall.');
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//                       ^ reference local 15
    }
  }
  
  base class Foo {}
//           ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Foo#
  
  final class Bar {}
//            ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Bar#
  
  interface class Car {}
//                ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Car#
  
  sealed class Zar {}
//             ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Zar#
  
  class Point {
//      ^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#
    final int x;
//        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//            ^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#x.
    final int y;
//        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//            ^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#y.
    Point(this.x, this.y);
//  ^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#`<constructor>`().
//             ^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#x.
//                     ^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#y.
  }
  
  void patternVariables(Object obj, (int, int) pair) {
//     ^^^^^^^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/patternVariables().
//                      ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#
//                             ^^^ definition local 16
//                                   ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                                        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                                             ^^^^ definition local 17
    var (a, b) = pair;
//       ^ definition local 18
//          ^ definition local 19
//               ^^^^ reference local 17
    (b, a) = (a, b);
//   ^ reference local 19
//      ^ reference local 18
//            ^ reference local 18
//               ^ reference local 19
  
    final Point(x: px, :y) = Point(1, 2);
//        ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#
//              ^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#x.
//                 ^^ definition local 20
//                      ^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#y.
//                      ^ definition local 21
//                           ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#`<constructor>`().
    print('$a $b $px $y');
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//          ^ reference local 18
//             ^ reference local 19
//                ^^ reference local 20
//                    ^ reference local 21
  
    switch (obj) {
//          ^^^ reference local 16
      case Point(x: var v, y: 0) || Point(x: 0, y: var v):
//         ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#
//               ^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#x.
//                      ^ definition local 22
//                         ^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#y.
//                                  ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#
//                                        ^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#x.
//                                              ^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Point#y.
//                                                     ^ definition local 22
        print(v);
//      ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//            ^ reference local 22
      case [int first, ...var rest]:
//          ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//              ^^^^^ definition local 23
//                            ^^^^ definition local 24
        print('$first $rest');
//      ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//              ^^^^^ reference local 23
//                     ^^^^ reference local 24
      case {'key': String value}:
//                 ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                        ^^^^^ definition local 25
        print(value);
//      ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//            ^^^^^ reference local 25
    }
  
    for (final (i, j) in [pair]) {
//              ^ definition local 26
//                 ^ definition local 27
//                        ^^^^ reference local 17
      print(i + j);
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//          ^ reference local 26
//              ^ reference local 27
    }
  }
  
