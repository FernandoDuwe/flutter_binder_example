import 'package:binder/binder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_binder_example/logics/counter_logic.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch(counterRef);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example"),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: () => context.use(counterViewLogicRef).increment(), child: Icon(Icons.add),),
          FloatingActionButton(onPressed: () => context.use(counterViewLogicRef).decrement(), child: Icon(Icons.remove),),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Contador: "),
            Text(counter.toString())
          ],
        ),
      ),
    );
  }
}
