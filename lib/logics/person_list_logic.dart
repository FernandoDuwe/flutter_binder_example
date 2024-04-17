import 'package:binder/binder.dart';
import 'package:flutter_binder_example/models/person_model.dart';

final personListRef = StateRef([]);

class PersonListLogic with Logic {
  PersonListLogic(this.scope);

  @override
  final Scope scope;

  // actions
  void addPerson(PersonModel prPersonModel) =>
      write(personListRef, [...read(personListRef), prPersonModel]);

  void removePerson(PersonModel prPersonModel) {
    var vrList = [...read(personListRef)];

    vrList.removeWhere(
        (element) => (element as PersonModel).name == prPersonModel.name);

    write(personListRef, [...vrList]);
  }
}

final personListLogicRef = LogicRef((scope) => PersonListLogic(scope));
