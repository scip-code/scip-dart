import 'dart:async';

Future<int> fetchValue() async {
  await Future.delayed(Duration.zero);
  return 42;
}

Stream<int> countTo(int n) async* {
  for (var i = 1; i <= n; i++) {
    yield i;
  }
}

Iterable<int> evens(int max) sync* {
  for (var i = 0; i < max; i += 2) {
    yield i;
  }
  yield* [max];
}

class CustomException implements Exception {
  final String message;
  CustomException(this.message);
}

Future<void> main() async {
  final value = await fetchValue();

  await for (final i in countTo(value)) {
    print(i);
  }

  final controller = StreamController<String>();
  final subscription = controller.stream.listen(print);
  controller.add('event');
  await subscription.cancel();

  try {
    throw CustomException('boom');
  } on CustomException catch (e, stackTrace) {
    print('${e.message} $stackTrace');
  } on FormatException {
    rethrow;
  } catch (e) {
    print(e);
  } finally {
    print('done');
  }

  outer:
  for (final i in evens(10)) {
    var j = 0;
    while (true) {
      if (j > i) continue outer;
      if (i > 6) break outer;
      j++;
    }
  }

  var k = 0;
  do {
    k++;
  } while (k < 3);

  assert(k == 3, 'k should be 3');
}
