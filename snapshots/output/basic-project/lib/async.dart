  import 'dart:async';
// definition scip-dart pub dart_test 1.0.0 lib/`async.dart`/
//       ^^^^^^^^^^^^ reference scip-dart pub dart:async 3.13.0 dart:async/
  
  Future<int> fetchValue() async {
//^^^^^^ reference scip-dart pub dart:async 3.13.0 dart:async/`future.dart`/Future#
//       ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//            ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`async.dart`/fetchValue().
    await Future.delayed(Duration.zero);
//        ^^^^^^ reference scip-dart pub dart:async 3.13.0 dart:async/`future.dart`/Future#
//               ^^^^^^^ reference scip-dart pub dart:async 3.13.0 dart:async/`future.dart`/Future#delayed().
//                       ^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`duration.dart`/Duration#
//                                ^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`duration.dart`/Duration#zero.
    return 42;
  }
  
  Stream<int> countTo(int n) async* {
//^^^^^^ reference scip-dart pub dart:async 3.13.0 dart:async/`stream.dart`/Stream#
//       ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//            ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`async.dart`/countTo().
//                    ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                        ^ definition local 0
    for (var i = 1; i <= n; i++) {
//           ^ definition local 1
//                  ^ reference local 1
//                       ^ reference local 0
//                          ^ reference local 1
      yield i;
//          ^ reference local 1
    }
  }
  
  Iterable<int> evens(int max) sync* {
//^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`iterable.dart`/Iterable#
//         ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//              ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`async.dart`/evens().
//                    ^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`int.dart`/int#
//                        ^^^ definition local 2
    for (var i = 0; i < max; i += 2) {
//           ^ definition local 3
//                  ^ reference local 3
//                      ^^^ reference local 2
//                           ^ reference local 3
      yield i;
//          ^ reference local 3
    }
    yield* [max];
//          ^^^ reference local 2
  }
  
  class CustomException implements Exception {
//      ^^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`async.dart`/CustomException#
//      relationship scip-dart pub dart:core 3.13.0 dart:core/`exceptions.dart`/Exception# implementation
//                                 ^^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`exceptions.dart`/Exception#
    final String message;
//        ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
//               ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`async.dart`/CustomException#message.
    CustomException(this.message);
//  ^^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`async.dart`/CustomException#`<constructor>`().
//                       ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`async.dart`/CustomException#message.
  }
  
  Future<void> main() async {
//^^^^^^ reference scip-dart pub dart:async 3.13.0 dart:async/`future.dart`/Future#
//             ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`async.dart`/main().
    final value = await fetchValue();
//        ^^^^^ definition local 4
//                      ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`async.dart`/fetchValue().
  
    await for (final i in countTo(value)) {
//                   ^ definition local 5
//                        ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`async.dart`/countTo().
//                                ^^^^^ reference local 4
      print(i);
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//          ^ reference local 5
    }
  
    final controller = StreamController<String>();
//        ^^^^^^^^^^ definition local 6
//                     ^^^^^^^^^^^^^^^^ reference scip-dart pub dart:async 3.13.0 dart:async/`stream_controller.dart`/StreamController#`<constructor>`().
//                                      ^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`string.dart`/String#
    final subscription = controller.stream.listen(print);
//        ^^^^^^^^^^^^ definition local 7
//                       ^^^^^^^^^^ reference local 6
//                                  ^^^^^^ reference scip-dart pub dart:async 3.13.0 dart:async/`stream_controller.dart`/StreamController#`<get>stream`.
//                                         ^^^^^^ reference scip-dart pub dart:async 3.13.0 dart:async/`stream.dart`/Stream#listen().
//                                                ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
    controller.add('event');
//  ^^^^^^^^^^ reference local 6
//             ^^^ reference scip-dart pub dart:async 3.13.0 dart:async/`stream_controller.dart`/StreamController#add().
    await subscription.cancel();
//        ^^^^^^^^^^^^ reference local 7
//                     ^^^^^^ reference scip-dart pub dart:async 3.13.0 dart:async/`stream.dart`/StreamSubscription#cancel().
  
    try {
      throw CustomException('boom');
//          ^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`async.dart`/CustomException#`<constructor>`().
    } on CustomException catch (e, stackTrace) {
//       ^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`async.dart`/CustomException#
      print('${e.message} $stackTrace');
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//             ^ reference local 8
//               ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`async.dart`/CustomException#message.
//                         ^^^^^^^^^^ reference local 9
    } on FormatException {
//       ^^^^^^^^^^^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`exceptions.dart`/FormatException#
      rethrow;
    } catch (e) {
      print(e);
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
//          ^ reference local 10
    } finally {
      print('done');
//    ^^^^^ reference scip-dart pub dart:core 3.13.0 dart:core/`print.dart`/print().
    }
  
    outer:
    for (final i in evens(10)) {
//             ^ definition local 11
//                  ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`async.dart`/evens().
      var j = 0;
//        ^ definition local 12
      while (true) {
        if (j > i) continue outer;
//          ^ reference local 12
//              ^ reference local 11
        if (i > 6) break outer;
//          ^ reference local 11
        j++;
//      ^ reference local 12
      }
    }
  
    var k = 0;
//      ^ definition local 13
    do {
      k++;
//    ^ reference local 13
    } while (k < 3);
//           ^ reference local 13
  
    assert(k == 3, 'k should be 3');
//         ^ reference local 13
  }
  
