class Vector {
  final int x;
  final int y;

  const Vector(this.x, this.y);

  static const zero = Vector(0, 0);

  Vector operator +(Vector other) => Vector(x + other.x, y + other.y);
  Vector operator -() => Vector(-x, -y);
  int operator [](int index) => index == 0 ? x : y;
  bool operator <(Vector other) => length < other.length;

  int get length => x * x + y * y;

  @override
  bool operator ==(Object other) =>
      other is Vector && other.x == x && other.y == y;

  @override
  int get hashCode => Object.hash(x, y);
}

class Multiplier {
  final int factor;
  Multiplier(this.factor);

  int call(int value) => value * factor;
}

Vector? maybeVector() => null;

int _counter = 0;
int get counter => _counter;
set counter(int value) => _counter = value;

void main() {
  var a = const Vector(1, 2);
  var b = Vector.zero;
  var c = a + b;
  c = -c;
  print(c[0]);
  print(a < b);
  a += b;

  final doubler = Multiplier(2);
  doubler(4);

  counter = 5;
  counter++;
  print(counter);

  Vector? maybe = maybeVector();
  maybe ??= a;
  print(maybeVector()?.x ?? 0);
  print(maybeVector()!.y);

  final includeExtra = DateTime.now().isUtc;
  final list = [
    1,
    ...[2, 3],
    ...?null,
    if (includeExtra) 4 else 5,
    for (var i = 0; i < 3; i++) i * 10,
  ];
  final set = {...list};
  final map = {for (final v in set) v: '$v'};
  print(map);
}
