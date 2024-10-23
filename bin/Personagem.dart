class Personagem {

  String nome;
  String raca;
  String classe;
  int idade;
  double altura;
  bool magico;
  int vida;
  int energia;
  List<String> habilidades;


  Personagem({
    required this.nome,
    required this.raca,
    required this.classe,
    required this.idade,
    required this.altura,
    required this.magico,
    required this.vida,
    required this.energia,
    required this.habilidades,
  });


  void exibirFicha() {
    print('Ficha do Personagem:');
    print('Nome: $nome');
    print('Raça: $raca');
    print('Classe: $classe');
    print('Idade: $idade anos');
    print('Altura: ${altura.toStringAsFixed(2)} metros');
    print('Mágico: ${magico ? "Sim" : "Não"}');
    print('Vida: $vida');
    print('Energia: $energia');
    print('Habilidades:');
    for (var habilidade in habilidades) {
      print('- $habilidade');
    }
  }
}