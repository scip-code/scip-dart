  // Extension types (Dart 3.3)
// definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/
  extension type UserId(int id) {
//               ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#
//                      ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                          ^^ definition local 0
    UserId.fromString(String value) : this(int.parse(value));
//  ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#
//         ^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#fromString().
//                    ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                           ^^^^^ definition local 1
//                                         ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                                             ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#parse().
//                                                   ^^^^^ reference local 1
  
    bool get isValid => id > 0;
//  ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`bool.dart`/bool#
//           ^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#`<get>isValid`.
//                      ^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#id.
  
    UserId next() => UserId(id + 1);
//  ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#
//         ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#next().
//                   ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#`<constructor>`().
//                          ^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#id.
  }
  
  extension type const Meters(double value) implements double {
//                     ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Meters#
//                            ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
//                                   ^^^^^ definition local 2
//                                                     ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`double.dart`/double#
    Meters operator +(Meters other) => Meters(value + other.value);
//  ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Meters#
//                  ^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Meters#+().
//                    ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Meters#
//                           ^^^^^ definition local 3
//                                     ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Meters#`<constructor>`().
//                                            ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Meters#value.
//                                                    ^^^^^ reference local 3
//                                                          ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Meters#value.
  }
  
  // Wildcard variables (Dart 3.7)
  void wildcards(int _, int _) {
//     ^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/wildcards().
//               ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                   ^ definition local 4
//                      ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                          ^ definition local 5
    var _ = 1;
//      ^ definition local 6
    final _ = 2;
//        ^ definition local 7
    for (var _ in [1, 2]) {}
//           ^ definition local 8
  }
  
  // Null-aware elements (Dart 3.8)
  List<String> nullAwareElements(String? maybe, Map<String, int?> source) {
//^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`list.dart`/List#
//     ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//             ^^^^^^^^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/nullAwareElements().
//                               ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                                       ^^^^^ definition local 9
//                                              ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`map.dart`/Map#
//                                                  ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//                                                          ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                                                                ^^^^^^ definition local 10
    final map = {'key': ?source['key']};
//        ^^^ definition local 11
//                       ^^^^^^ reference local 10
    print(map);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^ reference local 11
    return ['always', ?maybe];
//                     ^^^^^ reference local 9
  }
  
  enum Status { active, inactive }
//     ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#
//              ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#active.
//                      ^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#inactive.
  
  class Config {
//      ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#
    final Status status;
//        ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#
//               ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#status.
    const Config({this.status = .active});
//        ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#`<constructor>`().
//                     ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#status.
//                     ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#`<constructor>`().(status)
//                               ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#active.
  
    static Config get defaults => const Config();
//         ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#
//                    ^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#`<get>defaults`.
//                                      ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#`<constructor>`().
  }
  
  // Dot shorthands (Dart 3.10)
  bool isActive(Status status) => status == .active;
//^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`bool.dart`/bool#
//     ^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/isActive().
//              ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#
//                     ^^^^^^ definition local 12
//                                ^^^^^^ reference local 12
//                                           ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#active.
  
  void main() {
//     ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/main().
    final id = UserId(1);
//        ^^ definition local 13
//             ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#`<constructor>`().
    final parsed = UserId.fromString('2');
//        ^^^^^^ definition local 14
//                 ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#
//                        ^^^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#fromString().
    print([id.isValid, parsed.next().id]);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//         ^^ reference local 13
//            ^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#`<get>isValid`.
//                     ^^^^^^ reference local 14
//                            ^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#next().
//                                   ^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/UserId#id.
  
    const length = Meters(1.5);
//        ^^^^^^ definition local 15
//                 ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Meters#`<constructor>`().
    print(length + Meters(2));
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^^^^ reference local 15
//                 ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Meters#`<constructor>`().
  
    wildcards(1, 2);
//  ^^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/wildcards().
    nullAwareElements(null, {'key': 1});
//  ^^^^^^^^^^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/nullAwareElements().
  
    Status status = .inactive;
//  ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#
//         ^^^^^^ definition local 16
//                   ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#inactive.
    Config config = .defaults;
//  ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#
//         ^^^^^^ definition local 17
//                   ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#`<get>defaults`.
    print(isActive(status));
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/isActive().
//                 ^^^^^^ reference local 16
    print(config.status);
//  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//        ^^^^^^ reference local 17
//               ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Config#status.
  
    switch (status) {
//          ^^^^^^ reference local 16
      case .active:
//          ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#active.
        print('active');
//      ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
      case .inactive:
//          ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`modern.dart`/Status#inactive.
        print('inactive');
//      ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
    }
  }
  
