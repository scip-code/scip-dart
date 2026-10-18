class Box<T> {
  T value;
  Box(this.value);

  R map<R>(R Function(T value) transform) => transform(value);
}

class NumberBox<N extends num> extends Box<N> {
  NumberBox(super.value);

  N add(N other) => (value + other) as N;
}

abstract class Repository<K, V extends Object> {
  V? find(K key);
  void save(K key, V value);
}

class MemoryRepository<V extends Object> implements Repository<String, V> {
  final Map<String, V> _store = {};

  @override
  V? find(String key) => _store[key];

  @override
  void save(String key, V value) => _store[key] = value;
}

T firstOf<T>(List<T> items) => items.first;

typedef Mapper<A, B> = B Function(A input);
typedef StringMap<V> = Map<String, V>;

void main() {
  final box = Box<int>(1);
  final str = box.map<String>((v) => '$v');
  final numBox = NumberBox(2.5);
  numBox.add(1.5);

  final repo = MemoryRepository<Box<int>>();
  repo.save('a', box);
  repo.find('a');

  firstOf<String>([str]);

  Mapper<int, String> mapper = (input) => '$input';
  StringMap<int> map = {'a': 1};
  print([mapper(1), map]);
}
