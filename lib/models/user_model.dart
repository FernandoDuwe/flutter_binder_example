class UserModel {
  String userName = "";
  String passWord = "";

  UserModel({required this.userName, required this.passWord});

  UserModel.empty();

  String get errorMessage {
    if (this.userName.isEmpty) return "Usuário obrigatório";

    if (this.passWord.isEmpty) return "Senha obrigatória";

    return "";
  }

  bool get hasError => (this.userName.isEmpty) || (this.passWord.isEmpty);
}
