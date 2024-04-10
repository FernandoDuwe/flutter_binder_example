import 'package:binder/binder.dart';

final counterRef = StateRef(0);

class CounterLogic with Logic {
  CounterLogic(this.scope);

  @override
  final Scope scope;

  // actions
  void increment() => write(counterRef, read(counterRef) + 1);

  void decrement() => write(counterRef, read(counterRef) - 1);
}

final counterViewLogicRef = LogicRef((scope) => CounterLogic(scope));
