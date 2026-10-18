  abstract interface class Flyer {
// definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/
//                         ^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Flyer#
    void fly();
//       ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Flyer#fly().
  }
  
  abstract base class Vehicle {
//                    ^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Vehicle#
    void move();
//       ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Vehicle#move().
  }
  
  base mixin Engine {
//           ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Engine#
    void start() => print('vroom');
//       ^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Engine#start().
//                  ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
  }
  
  mixin class Musician {
//            ^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Musician#
    void play() => print('playing');
//       ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Musician#play().
//                 ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
  }
  
  final class Airplane extends Vehicle with Engine implements Flyer {
//            ^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Airplane#
//            relationship scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Engine# implementation
//            relationship scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Flyer# implementation
//            relationship scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Vehicle# implementation
//                             ^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Vehicle#
//                                          ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Engine#
//                                                            ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Flyer#
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`annotations.dart`/override.
    void move() => start();
//       ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Airplane#move().
//       relationship scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Vehicle#move(). implementation reference
//                 ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Engine#start().
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`annotations.dart`/override.
    void fly() => move();
//       ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Airplane#fly().
//       relationship scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Flyer#fly(). implementation reference
//                ^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Airplane#move().
  }
  
  sealed class Result<T> {
//             ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Result#
//                    ^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Result#[T]
    const Result();
//        ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Result#`<constructor>`().
  }
  
  final class Ok<T> extends Result<T> {
//            ^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Ok#
//            relationship scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Result# implementation
//               ^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Ok#[T]
//                          ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Result#
//                                 ^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Ok#[T]
    final T value;
//        ^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Ok#[T]
//          ^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Ok#value.
    const Ok(this.value);
//        ^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Ok#`<constructor>`().
//                ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Ok#value.
  }
  
  final class Err<T> extends Result<T> {
//            ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Err#
//            relationship scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Result# implementation
//                ^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Err#[T]
//                           ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Result#
//                                  ^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Err#[T]
    final Object error;
//        ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`object.dart`/Object#
//               ^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Err#error.
    const Err(this.error);
//        ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Err#`<constructor>`().
//                 ^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Err#error.
  }
  
  class Band with Musician {}
//      ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Band#
//      relationship scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Musician# implementation
//                ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Musician#
  
  String describe<T>(Result<T> result) => switch (result) {
//^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//       ^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/describe().
//                ^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/describe().[T]
//                   ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Result#
//                          ^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/describe().[T]
//                             ^^^^^^ definition local 0
//                                                ^^^^^^ reference local 0
        Ok(:final value) => 'ok $value',
//      ^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Ok#
//                               ^^^^^ reference local 1
        Err(:final error) => 'err $error',
//      ^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Err#
//                                 ^^^^^ reference local 2
      };
  
  void main() {
//     ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/main().
    Airplane().fly();
//  ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Airplane#`<constructor>`().
//             ^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Airplane#fly().
    Band().play();
//  ^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Band#`<constructor>`().
//         ^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Musician#play().
    describe(const Ok(1));
//  ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/describe().
//                 ^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Ok#`<constructor>`().
    describe(Err<int>('bad'));
//  ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/describe().
//           ^^^ reference scip-dart pub dart3_features 1.0.0 lib/`class_modifiers.dart`/Err#`<constructor>`().
//               ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
  }
  
