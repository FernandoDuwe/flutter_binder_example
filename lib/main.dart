import 'package:binder/binder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_binder_example/screens/home_screen.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return BinderScope(
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
