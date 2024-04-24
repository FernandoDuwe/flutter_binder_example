import 'package:binder/binder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_binder_example/logics/counter_logic.dart';

class HomeCounter extends StatelessWidget {
  const HomeCounter({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = context.watch(counterRef);

    return Scaffold(
      body: Center(
        child: Text("Contador: ${counter}"),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => context.use(counterViewLogicRef).increment()),
          FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () => context.use(counterViewLogicRef).decrement()),
        ],
      ),
    );
  }
}
