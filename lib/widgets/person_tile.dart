import 'package:binder/binder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_binder_example/logics/person_list_logic.dart';
import 'package:flutter_binder_example/models/person_model.dart';

class PersonTile extends StatelessWidget {
  final PersonModel personModel;

  const PersonTile({super.key, required this.personModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(this.personModel.name),
      subtitle: Text(this.personModel.telephone),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        onPressed: () =>
            context.use(personListLogicRef).removePerson(this.personModel),
      ),
    );
  }
}
