import 'dart:math';

void main(List<String> arguments) {
  var random = Random();

  String nome = "Dj";
  String raca = "Humano";
  String classe = "Guerreiro";
  int idade = 21;
  double altura = 1.81;
  bool eMagico = false;
  int pontosDeVida = 100;
  int energia = 100;


  List<String> habilidades = ["Espada", "Arco e Flecha", "Corpo a Corpo"];

  print("Nome: $nome");
  print("Raça: $raca");
  print("Classe: $classe");
  print("Idade: $idade");
  print("Altura: $altura");
  print("É mágico: ${eMagico ? "Sim" : "Não"}");
  print("Pontos de Vida: $pontosDeVida");
  print("Energia: $energia");
  print("Habilidades: $habilidades");

  print("\n O Personagem iniciou uma batalha! \n");
  while (energia > 0) {
    int valorAleatorio = random.nextInt(2);
    print("O persongem está batalhando!");
    print("O personagem utilizou: ${habilidades[valorAleatorio]}");
    energia -= 20;
    print("Energia Restante: $energia\n");
  }

  if (energia == 0) { print("A energia do personagem se esgotou!");}

}