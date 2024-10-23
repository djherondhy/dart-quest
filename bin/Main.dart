import 'Personagem.dart';
import 'Guerreiro.dart';
import 'Mago.dart';

void main() {

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
