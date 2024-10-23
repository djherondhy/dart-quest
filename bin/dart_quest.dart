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
class Guerreiro extends Personagem implements Combate{

  String arma;
  String estiloDeCombate;


  Guerreiro({
    required String nome,
    required String raca,
    required int idade,
    required double altura,
    required int vida,
    required int energia,
    required List<String> habilidades,
    required this.arma,
    required this.estiloDeCombate,
  }) : super(
    nome: nome,
    raca: raca,
    classe: 'Guerreiro',
    idade: idade,
    altura: altura,
    magico: false,
    vida: vida,
    energia: energia,
    habilidades: habilidades,
  );


  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Arma: $arma');
    print('Estilo de Combate: $estiloDeCombate');
  }

  @override
  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} com $arma!');
    alvo.vida -= 10; // Diminui a vida do alvo em 10 (exemplo)
    print('${alvo.nome} agora tem ${alvo.vida} de vida.');
  }

}

class Mago extends Personagem implements Combate{

  Mago({
    required String nome,
    required String raca,
    required int idade,
    required double altura,
    required int vida,
    required int energia,
    required List<String> habilidades,
  }) : super(
    nome: nome,
    raca: raca,
    classe: 'Mago',
    idade: idade,
    altura: altura,
    magico: true, // Magos possuem habilidades mágicas
    vida: vida,
    energia: energia,
    habilidades: habilidades,
  );


  void lancarFeitico() {
    if (habilidades.isNotEmpty) {
      print('$nome está lançando um feitiço usando:');
      for (var habilidade in habilidades) {
        print('- $habilidade');
      }
    } else {
      print('$nome não tem habilidades mágicas para lançar feitiços.');
    }
  }


  @override
  void exibirFicha() {
    super.exibirFicha(); // Reutiliza o método da classe base
  }


  @override
  void atacar(Personagem alvo) {
    print('$nome lança um feitiço em ${alvo.nome}!');
    alvo.vida -= 15;
    print('${alvo.nome} agora tem ${alvo.vida} de vida.');
  }
}

abstract class Combate {
  void atacar(Personagem alvo);
}

void main() {
  // Instância do personagem
  var personagem = Personagem(
    nome: 'Dj',
    raca: 'Humano',
    classe: 'Matador',
    idade: 87,
    altura: 1.85,
    magico: false,
    vida: 100,
    energia: 80,
    habilidades: ['Combate com espada', 'Liderança', 'Sobrevivência'],
  );


  personagem.exibirFicha();

  var guerreiro = Guerreiro(
    nome: 'Ronaldo',
    raca: 'Anão',
    idade: 150,
    altura: 1.40,
    vida: 120,
    energia: 90,
    habilidades: ['Força Bruta', 'Resistência', 'Machado Duplo'],
    arma: 'Machado de Batalha',
    estiloDeCombate: 'Corpo a corpo',
  );


  guerreiro.exibirFicha();

  var mago = Mago(
    nome: 'Patolino',
    raca: 'Pato',
    idade: 2019,
    altura: 1.80,
    vida: 100,
    energia: 150,
    habilidades: ['Magia Branca', 'Controle de Luz', 'Proteção Mágica'],
  );


  mago.exibirFicha();
  mago.lancarFeitico();

  guerreiro.atacar(mago);
  mago.atacar(guerreiro);

}
