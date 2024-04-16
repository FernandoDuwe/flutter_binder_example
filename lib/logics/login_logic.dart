import 'package:binder/binder.dart';
import 'package:flutter_binder_example/models/user_model.dart';

// Estado atual
final loginRef = StateRef(UserModel.empty());

// Classe com a lógica
class LoginLogic with Logic {
  LoginLogic(this.scope);

  @override
  final Scope scope;

  // Ações
  void setUserName(String prNewUserName) => write(loginRef,
      UserModel(userName: prNewUserName, passWord: read(loginRef).passWord));

  void setPassword(String prNewPassword) => write(loginRef,
      UserModel(userName: read(loginRef).userName, passWord: prNewPassword));
}

// Refência a instância da classe de lógica
final loginLogicRef = LogicRef((scope) => LoginLogic(scope));
