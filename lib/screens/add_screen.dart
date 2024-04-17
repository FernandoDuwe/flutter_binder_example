import 'package:binder/binder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_binder_example/logics/person_add_logic.dart';
import 'package:flutter_binder_example/logics/person_list_logic.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vrPerson = context.watch(personAddRef);

    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar pessoa"),
        actions: [
          IconButton(
              onPressed: vrPerson.hasError
                  ? null
                  : () {
                      context.use(personListLogicRef).addPerson(vrPerson);

                      context.use(personAddLogicRef).setName("");
                      context.use(personAddLogicRef).setTelephone("");

                      Navigator.pop(context);
                    },
              icon: Icon(Icons.save))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (value) =>
                  context.use(personAddLogicRef).setName(value),
              decoration: InputDecoration(
                  labelText: "Nome", prefixIcon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              onChanged: (value) =>
                  context.use(personAddLogicRef).setTelephone(value),
              decoration: InputDecoration(
                  labelText: "Telefone", prefixIcon: Icon(Icons.phone)),
            ),
          ),
        ],
      ),
    );
  }
}
