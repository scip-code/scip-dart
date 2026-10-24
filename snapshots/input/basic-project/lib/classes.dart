abstract interface class Shape {
  double get area;
}

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);

  const Point.origin() : this(0, 0);

  factory Point.fromList(List<int> list) = _ListPoint;

  static int instances = 0;

  static Point parse(String value) {
    final parts = value.split(',');
    return Point(int.parse(parts[0]), int.parse(parts[1]));
  }
}

class _ListPoint extends Point {
  _ListPoint(List<int> list) : super(list[0], list[1]);
}

class Rectangle implements Shape {
  final double width;
  final double height;
  late final String description = 'Rectangle $width x $height';

  Rectangle(this.width, this.height) : assert(width >= 0);

  @override
  double get area => width * height;
}

class Square extends Rectangle {
  Square(double side) : super(side, side);
}

class ColoredSquare extends Square {
  final String color;
  ColoredSquare(super.side, {this.color = 'red'});
}

mixin class Walker {
  void walk() => print('walking');
}

mixin Logger on Rectangle {
  void log() => print('area: $area');
}

class LoggedRectangle extends Rectangle with Logger, Walker {
  LoggedRectangle() : super(1, 2);
}

enum Planet implements Comparable<Planet> {
  mercury(mass: 3.303e+23, radius: 2.4397e6),
  earth(mass: 5.976e+24, radius: 6.37814e6);

  const Planet({required this.mass, required this.radius});

  final double mass;
  final double radius;

  static const gravitationalConstant = 6.67300E-11;

  double get surfaceGravity => gravitationalConstant * mass / (radius * radius);

  @override
  int compareTo(Planet other) => mass.compareTo(other.mass);
}

String greet(String name, [String greeting = 'Hello', int? times]) =>
    '$greeting $name ${times ?? 1}';

void main() {
  const origin = Point.origin();
  final fromList = Point.fromList([1, 2]);
  Point.instances++;
  Point.parse('1,2');
  print([origin, fromList]);

  final square = ColoredSquare(2, color: 'blue');
  print(square.area);
  print(square.description);

  LoggedRectangle()
    ..log()
    ..walk();

  Planet.earth.surfaceGravity;
  Planet.values.byName('mercury');
  Planet.earth.compareTo(Planet.mercury);
  Planet.earth.index;
  Planet.earth.name;

  greet('Bob');
  greet('Bob', 'Hi', 2);

  // tear-offs
  final greetFn = greet;
  final parseFn = Point.parse;
  final ctorFn = Point.new;
  final namedCtorFn = Point.origin;
  final methodFn = square.toString;
  final listOf = List<int>.filled;
  print([greetFn, parseFn, ctorFn, namedCtorFn, methodFn, listOf]);
}
