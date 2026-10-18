  class Box<T> {
// definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#
//          ^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#[T]
    T value;
//  ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#[T]
//    ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#value.
    Box(this.value);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#`<constructor>`().
//           ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#value.
  
    R map<R>(R Function(T value) transform) => transform(value);
//  ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#map().[R]
//    ^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#map().
//        ^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#map().[R]
//           ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#map().[R]
//                      ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#[T]
//                               ^^^^^^^^^ definition local 0
//                                             ^^^^^^^^^ reference local 0
//                                                       ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#value.
  }
  
  class NumberBox<N extends num> extends Box<N> {
//      ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/NumberBox#
//      relationship scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box# implementation
//                ^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/NumberBox#[N]
//                          ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`num.dart`/num#
//                                       ^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#
//                                           ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/NumberBox#[N]
    NumberBox(super.value);
//  ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/NumberBox#`<constructor>`().
//                  ^^^^^ definition local 1
  
    N add(N other) => (value + other) as N;
//  ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/NumberBox#[N]
//    ^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/NumberBox#add().
//        ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/NumberBox#[N]
//          ^^^^^ definition local 2
//                     ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#value.
//                             ^^^^^ reference local 2
//                                       ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/NumberBox#[N]
  }
  
  abstract class Repository<K, V extends Object> {
//               ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#
//                          ^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#[K]
//                             ^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#[V]
//                                       ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#
    V? find(K key);
//  ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#[V]
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#find().
//          ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#[K]
//            ^^^ definition local 3
    void save(K key, V value);
//       ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#save().
//            ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#[K]
//              ^^^ definition local 4
//                   ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#[V]
//                     ^^^^^ definition local 5
  }
  
  class MemoryRepository<V extends Object> implements Repository<String, V> {
//      ^^^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#
//      relationship scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository# implementation
//                       ^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#[V]
//                                 ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#
//                                                    ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#
//                                                               ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                                                                       ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#[V]
    final Map<String, V> _store = {};
//        ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`map.dart`/Map#
//            ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                    ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#[V]
//                       ^^^^^^ definition local 6
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`annotations.dart`/override.
    V? find(String key) => _store[key];
//  ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#[V]
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#find().
//     relationship scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#find(). implementation reference
//          ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                 ^^^ definition local 7
//                         ^^^^^^ reference local 8
//                                ^^^ reference local 7
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`annotations.dart`/override.
    void save(String key, V value) => _store[key] = value;
//       ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#save().
//       relationship scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Repository#save(). implementation reference
//            ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                   ^^^ definition local 9
//                        ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#[V]
//                          ^^^^^ definition local 10
//                                    ^^^^^^ reference local 11
//                                           ^^^ reference local 9
//                                                  ^^^^^ reference local 10
  }
  
  T firstOf<T>(List<T> items) => items.first;
//^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/firstOf().[T]
//  ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/firstOf().
//          ^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/firstOf().[T]
//             ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`list.dart`/List#
//                  ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/firstOf().[T]
//                     ^^^^^ definition local 12
//                               ^^^^^ reference local 12
//                                     ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`iterable.dart`/Iterable#`<get>first`.
  
  typedef Mapper<A, B> = B Function(A input);
//        ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Mapper#
//               ^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Mapper#[A]
//                  ^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Mapper#[B]
//                       ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Mapper#[B]
//                                  ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Mapper#[A]
  typedef StringMap<V> = Map<String, V>;
//        ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/StringMap#
//                  ^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/StringMap#[V]
//                       ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`map.dart`/Map#
//                           ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                                   ^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/StringMap#[V]
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`generics.dart`/main().
    final box = Box<int>(1);
//        ^^^ definition local 13
//              ^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#`<constructor>`().
//                  ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
    final str = box.map<String>((v) => '$v');
//        ^^^ definition local 14
//              ^^^ reference local 13
//                  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#map().
//                      ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                               ^ definition local 15
//                                       ^ reference local 15
    final numBox = NumberBox(2.5);
//        ^^^^^^ definition local 16
//                 ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/NumberBox#`<constructor>`().
    numBox.add(1.5);
//  ^^^^^^ reference local 16
//         ^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/NumberBox#add().
  
    final repo = MemoryRepository<Box<int>>();
//        ^^^^ definition local 17
//               ^^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#`<constructor>`().
//                                ^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Box#
//                                    ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
    repo.save('a', box);
//  ^^^^ reference local 17
//       ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#save().
//                 ^^^ reference local 13
    repo.find('a');
//  ^^^^ reference local 17
//       ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/MemoryRepository#find().
  
    firstOf<String>([str]);
//  ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/firstOf().
//          ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                   ^^^ reference local 14
  
    Mapper<int, String> mapper = (input) => '$input';
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/Mapper#
//         ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//              ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                      ^^^^^^ definition local 18
//                                ^^^^^ definition local 19
//                                            ^^^^^ reference local 19
    StringMap<int> map = {'a': 1};
//  ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`generics.dart`/StringMap#
//            ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                 ^^^ definition local 20
    print([mapper(1), map]);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//         ^^^^^^ reference local 18
//                    ^^^ reference local 20
  }
  
