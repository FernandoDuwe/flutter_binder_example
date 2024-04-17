import 'package:binder/binder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_binder_example/logics/person_list_logic.dart';

class PersonCount extends StatelessWidget {
  const PersonCount({super.key});

  @override
  Widget build(BuildContext context) {
    final vrCount =
        context.watch(personListRef.select((state) => state.length));

    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          child: Text(vrCount.toString()),
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
        ),
        Icon(Icons.person),
      ],
    );
  }
}
