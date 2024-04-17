class PersonModel {
  String name = "";
  String telephone = "";

  PersonModel({required this.name, required this.telephone});

  PersonModel.empty();

  String get errorMessage {
    if (this.name.isEmpty) return "Nome obrigatório";

    if (this.telephone.isEmpty) return "Telefone obrigatório";

    return "";
  }

  bool get hasError => (this.name.isEmpty) || (this.telephone.isEmpty);
}
