import 'Personagem.dart';
import 'Combate.dart';

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
