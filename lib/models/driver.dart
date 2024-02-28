class Driver {
  String name;
  String cpf;
  int idade;
  String? image;
  late bool isBusy;
  Driver({
    required this.name,
    required this.cpf,
    required this.idade,
    this.image,
    this.isBusy = false,
  });
}
