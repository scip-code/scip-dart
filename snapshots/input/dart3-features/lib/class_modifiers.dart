abstract interface class Flyer {
  void fly();
}

abstract base class Vehicle {
  void move();
}

base mixin Engine {
  void start() => print('vroom');
}

mixin class Musician {
  void play() => print('playing');
}

final class Airplane extends Vehicle with Engine implements Flyer {
  @override
  void move() => start();

  @override
  void fly() => move();
}

sealed class Result<T> {
  const Result();
}

final class Ok<T> extends Result<T> {
  final T value;
  const Ok(this.value);
}

final class Err<T> extends Result<T> {
  final Object error;
  const Err(this.error);
}

class Band with Musician {}

String describe<T>(Result<T> result) => switch (result) {
      Ok(:final value) => 'ok $value',
      Err(:final error) => 'err $error',
    };

void main() {
  Airplane().fly();
  Band().play();
  describe(const Ok(1));
  describe(Err<int>('bad'));
}
