extension StringExtensions on String {
  String get shout => toUpperCase();

  bool get isBlank => trim().isEmpty;

  String repeat(int times) => List.filled(times, this).join();

  static String empty() => '';
}

extension<T> on List<T> {
  T? get secondOrNull => length > 1 ? this[1] : null;
}

extension NumberParsing on String {
  int parseInt() => int.parse(this);
}

void main() {
  'hello'.shout;
  '  '.isBlank;
  'ab'.repeat(3);
  StringExtensions.empty();
  [1, 2].secondOrNull;

  // explicit extension application
  StringExtensions('hi').repeat(2);
  NumberParsing('42').parseInt();
}
