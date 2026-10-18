import 'dart:math' as math;
import 'package:test/test.dart' show test;
import '../more.dart' as more;
import '../other.dart' hide Bar;
import '../relationships.dart' show Dog;
export '../main.dart' show fib;
part 'directives_part.dart';

void useImports() {
  math.max(1, 2);
  test('name', () {});
  more.AnimalType.cat;
  Foo;
  Dog;
}
