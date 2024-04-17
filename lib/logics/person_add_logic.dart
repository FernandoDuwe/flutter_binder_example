import 'package:binder/binder.dart';
import 'package:flutter_binder_example/models/person_model.dart';

// Estado atual
final personAddRef = StateRef(PersonModel.empty());

// Classe com a lógica
class PersonAddLogic with Logic {
  PersonAddLogic(this.scope);

  @override
  final Scope scope;

  // Ações
  void setName(String prNewName) => write(personAddRef,
      PersonModel(name: prNewName, telephone: read(personAddRef).telephone));

  void setTelephone(String prNewPhone) => write(personAddRef,
      PersonModel(name: read(personAddRef).name, telephone: prNewPhone));
}

// Refência a instância da classe de lógica
final personAddLogicRef = LogicRef((scope) => PersonAddLogic(scope));
