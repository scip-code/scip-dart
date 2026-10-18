sealed class Shape {}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);
}

class Square extends Shape {
  final double side;
  Square(this.side);
}

double area(Shape shape) => switch (shape) {
      Circle(radius: final r) => 3.14 * r * r,
      Square(:final side) => side * side,
    };

({String name, int age}) person() => (name: 'Alice', age: 30);

(int, {String label}) mixed() => (1, label: 'one');

void main() {
  final p = person();
  print('${p.name} ${p.age}');

  final m = mixed();
  print('${m.$1} ${m.label}');

  final (:name, :age) = person();
  print('$name $age');

  var (a, b) = (1, 2);
  (a, b) = (b, a);

  final list = [1, 2, 3, 4];
  switch (list) {
    case [final first, ...final rest]:
      print('$first $rest');
    case []:
      print('empty');
  }

  final Object? value = {'id': 1, 'tags': ['x']};
  if (value case {'id': int id, 'tags': [String tag]}) {
    print('$id $tag');
  }

  final int? nullable = 3;
  if (nullable case final n?) {
    print(n);
  }

  final dynamic raw = 3;
  if (raw case final int asInt as int) {
    print(asInt);
  }

  final (int x, int y) = (5, 6);
  print(x + y);

  for (final (i, s) in [(1, 'a'), (2, 'b')]) {
    print('$i $s');
  }

  for (final Circle(:radius) in [Circle(1), Circle(2)]) {
    print(radius);
  }

  print(area(Circle(1)));
}
