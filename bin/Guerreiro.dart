import 'Personagem.dart';
import 'Combate.dart';

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