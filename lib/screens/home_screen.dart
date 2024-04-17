import 'package:binder/binder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_binder_example/logics/counter_logic.dart';
import 'package:flutter_binder_example/logics/person_list_logic.dart';
import 'package:flutter_binder_example/screens/add_screen.dart';
import 'package:flutter_binder_example/widgets/person_count.dart';
import 'package:flutter_binder_example/widgets/person_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final personList = context.watch(personListRef);

    return Scaffold(
        appBar: AppBar(
          title: Text("Página inicial"),
          actions: [PersonCount()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddScreen(),
            ));
          },
          child: Icon(Icons.add),
        ),
        body: (personList.isEmpty
            ? Center(
                child: Text("Nenhum item cadastrado"),
              )
            : ListView.builder(
                itemCount: personList.length,
                itemBuilder: (context, index) =>
                    PersonTile(personModel: personList[index]),
              )));
  }
}
