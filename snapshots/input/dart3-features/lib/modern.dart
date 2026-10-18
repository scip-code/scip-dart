// Extension types (Dart 3.3)
extension type UserId(int id) {
  UserId.fromString(String value) : this(int.parse(value));

  bool get isValid => id > 0;

  UserId next() => UserId(id + 1);
}

extension type const Meters(double value) implements double {
  Meters operator +(Meters other) => Meters(value + other.value);
}

// Wildcard variables (Dart 3.7)
void wildcards(int _, int _) {
  var _ = 1;
  final _ = 2;
  for (var _ in [1, 2]) {}
}

// Null-aware elements (Dart 3.8)
List<String> nullAwareElements(String? maybe, Map<String, int?> source) {
  final map = {'key': ?source['key']};
  print(map);
  return ['always', ?maybe];
}

enum Status { active, inactive }

class Config {
  final Status status;
  const Config({this.status = .active});

  static Config get defaults => const Config();
}

// Dot shorthands (Dart 3.10)
bool isActive(Status status) => status == .active;

void main() {
  final id = UserId(1);
  final parsed = UserId.fromString('2');
  print([id.isValid, parsed.next().id]);

  const length = Meters(1.5);
  print(length + Meters(2));

  wildcards(1, 2);
  nullAwareElements(null, {'key': 1});

  Status status = .inactive;
  Config config = .defaults;
  print(isActive(status));
  print(config.status);

  switch (status) {
    case .active:
      print('active');
    case .inactive:
      print('inactive');
  }
}
