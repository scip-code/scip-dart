  abstract interface class Shape {
// definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/
//                         ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Shape#
    double get area;
//  ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//             ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Shape#`<get>area`.
  }
  
  class Point {
//      ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
    final int x;
//        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//            ^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#x.
    final int y;
//        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//            ^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#y.
  
    const Point(this.x, this.y);
//        ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#`<constructor>`().
//                   ^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#x.
//                           ^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#y.
  
    const Point.origin() : this(0, 0);
//        ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
//              ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#origin().
  
    factory Point.fromList(List<int> list) = _ListPoint;
//          ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
//                ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#fromList().
//                         ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`list.dart`/List#
//                              ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                                   ^^^^ definition local 0
//                                           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/_ListPoint#`<constructor>`().
  
    static int instances = 0;
//         ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//             ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#instances.
  
    static Point parse(String value) {
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
//               ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#parse().
//                     ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                            ^^^^^ definition local 1
      final parts = value.split(',');
//          ^^^^^ definition local 2
//                  ^^^^^ reference local 1
//                        ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#split().
      return Point(int.parse(parts[0]), int.parse(parts[1]));
//           ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#`<constructor>`().
//                 ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                     ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#parse().
//                           ^^^^^ reference local 2
//                                      ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                                          ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#parse().
//                                                ^^^^^ reference local 2
    }
  }
  
  class _ListPoint extends Point {
//      ^^^^^^^^^^ definition local 3
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point# implementation
//                         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
    _ListPoint(List<int> list) : super(list[0], list[1]);
//  ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/_ListPoint#`<constructor>`().
//             ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`list.dart`/List#
//                  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                       ^^^^ definition local 4
//                                     ^^^^ reference local 4
//                                              ^^^^ reference local 4
  }
  
  class Rectangle implements Shape {
//      ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Shape# implementation
//                           ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Shape#
    final double width;
//        ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//               ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#width.
    final double height;
//        ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//               ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#height.
    late final String description = 'Rectangle $width x $height';
//             ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                    ^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#description.
//                                              ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#width.
//                                                       ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#height.
  
    Rectangle(this.width, this.height) : assert(width >= 0);
//  ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#`<constructor>`().
//                 ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#width.
//                             ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#height.
//                                              ^^^^^ reference local 5
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`annotations.dart`/override.
    double get area => width * height;
//  ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//             ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#`<get>area`.
//             relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Shape#`<get>area`. implementation reference
//                     ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#width.
//                             ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#height.
  }
  
  class Square extends Rectangle {
//      ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Square#
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Shape# implementation
//                     ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#
    Square(double side) : super(side, side);
//  ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Square#`<constructor>`().
//         ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//                ^^^^ definition local 6
//                              ^^^^ reference local 6
//                                    ^^^^ reference local 6
  }
  
  class ColoredSquare extends Square {
//      ^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/ColoredSquare#
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Shape# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Square# implementation
//                            ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Square#
    final String color;
//        ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//               ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/ColoredSquare#color.
    ColoredSquare(super.side, {this.color = 'red'});
//  ^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/ColoredSquare#`<constructor>`().
//                      ^^^^ definition local 7
//                                  ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/ColoredSquare#color.
//                                  ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/ColoredSquare#`<constructor>`().(color)
  }
  
  mixin class Walker {
//            ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Walker#
    void walk() => print('walking');
//       ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Walker#walk().
//                 ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
  }
  
  mixin Logger on Rectangle {
//      ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Logger#
//                ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#
    void log() => print('area: $area');
//       ^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Logger#log().
//                ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//                              ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#`<get>area`.
  }
  
  class LoggedRectangle extends Rectangle with Logger, Walker {
//      ^^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/LoggedRectangle#
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Logger# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Shape# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Walker# implementation
//                              ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#
//                                             ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Logger#
//                                                     ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Walker#
    LoggedRectangle() : super(1, 2);
//  ^^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/LoggedRectangle#`<constructor>`().
  }
  
  enum Planet implements Comparable<Planet> {
//     ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#
//                       ^^^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`comparable.dart`/Comparable#
//                                  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#
    mercury(mass: 3.303e+23, radius: 2.4397e6),
//  ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#mercury.
//          ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#`<constructor>`().(mass)
//                           ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#`<constructor>`().(radius)
    earth(mass: 5.976e+24, radius: 6.37814e6);
//  ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#earth.
//        ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#`<constructor>`().(mass)
//                         ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#`<constructor>`().(radius)
  
    const Planet({required this.mass, required this.radius});
//        ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#`<constructor>`().
//                              ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#mass.
//                              ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#`<constructor>`().(mass)
//                                                  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#radius.
//                                                  ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#`<constructor>`().(radius)
  
    final double mass;
//        ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//               ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#mass.
    final double radius;
//        ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//               ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#radius.
  
    static const gravitationalConstant = 6.67300E-11;
//               ^^^^^^^^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#gravitationalConstant.
  
    double get surfaceGravity => gravitationalConstant * mass / (radius * radius);
//  ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//             ^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#`<get>surfaceGravity`.
//                               ^^^^^^^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#gravitationalConstant.
//                                                       ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#mass.
//                                                               ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#radius.
//                                                                        ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#radius.
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`annotations.dart`/override.
    int compareTo(Planet other) => mass.compareTo(other.mass);
//  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//      ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#compareTo().
//                ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#
//                       ^^^^^ definition local 8
//                                 ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#mass.
//                                      ^^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`num.dart`/num#compareTo().
//                                                ^^^^^ reference local 8
//                                                      ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#mass.
  }
  
  String greet(String name, [String greeting = 'Hello', int? times]) =>
//^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//       ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/greet().
//             ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                    ^^^^ definition local 9
//                           ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                                  ^^^^^^^^ definition local 10
//                                                      ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                                                           ^^^^^ definition local 11
      '$greeting $name ${times ?? 1}';
//      ^^^^^^^^ reference local 10
//                ^^^^ reference local 9
//                       ^^^^^ reference local 11
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`classes.dart`/main().
    const origin = Point.origin();
//        ^^^^^^ definition local 12
//                 ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
//                       ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#origin().
    final fromList = Point.fromList([1, 2]);
//        ^^^^^^^^ definition local 13
//                   ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
//                         ^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#fromList().
    Point.instances++;
//  ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
//        ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#instances.
    Point.parse('1,2');
//  ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
//        ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#parse().
    print([origin, fromList]);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//         ^^^^^^ reference local 12
//                 ^^^^^^^^ reference local 13
  
    final square = ColoredSquare(2, color: 'blue');
//        ^^^^^^ definition local 14
//                 ^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/ColoredSquare#`<constructor>`().
//                                  ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/ColoredSquare#`<constructor>`().(color)
    print(square.area);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^^^^ reference local 14
//               ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#`<get>area`.
    print(square.description);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^^^^ reference local 14
//               ^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Rectangle#description.
  
    LoggedRectangle()
//  ^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/LoggedRectangle#`<constructor>`().
      ..log()
//      ^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Logger#log().
      ..walk();
//      ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Walker#walk().
  
    Planet.earth.surfaceGravity;
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#earth.
//               ^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#`<get>surfaceGravity`.
    Planet.values.byName('mercury');
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#
//                ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`enum.dart`/EnumByName#byName().
    Planet.earth.compareTo(Planet.mercury);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#earth.
//               ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#compareTo().
//                         ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#
//                                ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#mercury.
    Planet.earth.index;
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#earth.
//               ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`enum.dart`/Enum#`<get>index`.
    Planet.earth.name;
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Planet#earth.
//               ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`enum.dart`/EnumName#`<get>name`.
  
    greet('Bob');
//  ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/greet().
    greet('Bob', 'Hi', 2);
//  ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/greet().
  
    // tear-offs
    final greetFn = greet;
//        ^^^^^^^ definition local 15
//                  ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/greet().
    final parseFn = Point.parse;
//        ^^^^^^^ definition local 16
//                  ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
//                        ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#parse().
    final ctorFn = Point.new;
//        ^^^^^^ definition local 17
//                 ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
//                       ^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#`<constructor>`().
    final namedCtorFn = Point.origin;
//        ^^^^^^^^^^^ definition local 18
//                      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#
//                            ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`classes.dart`/Point#origin().
    final methodFn = square.toString;
//        ^^^^^^^^ definition local 19
//                   ^^^^^^ reference local 14
//                          ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#toString().
    final listOf = List<int>.filled;
//        ^^^^^^ definition local 20
//                 ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`list.dart`/List#
//                      ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                           ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`list.dart`/List#filled().
    print([greetFn, parseFn, ctorFn, namedCtorFn, methodFn, listOf]);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//         ^^^^^^^ reference local 15
//                  ^^^^^^^ reference local 16
//                           ^^^^^^ reference local 17
//                                   ^^^^^^^^^^^ reference local 18
//                                                ^^^^^^^^ reference local 19
//                                                          ^^^^^^ reference local 20
  }
  
