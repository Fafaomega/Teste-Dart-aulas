void main() {
  Hero personagem1 = Hero('kaito', 10, 15, 8);
  Enemy inimigo1 = Enemy('Morcego', 10, 18, 6);

  personagem1.mensagem();
  personagem1.mensagemLevel();
  inimigo1.mensagem();
  inimigo1.mensagemLevel();
  if (personagem1.getPositionX() == inimigo1.getPositionX()) {
    print('Batalhando');
    if (personagem1.level > inimigo1.level || personagem1.ataque > inimigo1.ataque) {
      print(personagem1.nome + ' Ganhou a batalha contra ' + inimigo1.nome);
    } else if (personagem1.level < inimigo1.level || personagem1.ataque < inimigo1.ataque) {
      print(personagem1.nome + ' perdeu a batalha contra ' + inimigo1.nome + ' e desmaiou');
    } else {
      print('A batalha entra ' + personagem1.nome + ' e ' + inimigo1.nome + ' terminou em empate e ambos desmaiaram ');
    }
  }
}

abstract class Personagem {
  String nome = '';
  int posicaoX;
  int posicaoY;

  Personagem(this.nome, this.posicaoX, this.posicaoY);

  void mensagem() {
    print('o $nome está na posição ($posicaoX,$posicaoY)');
  }

  getPositionX() => posicaoX;
  getPositionY() => posicaoY;
}

class Hero extends Personagem {
  int level;
  double ataque;
  Hero(String nome, int posicaoX, int posicaoY, this.level, [this.ataque = 10]) : super(nome, posicaoX, posicaoY);

  void mensagemLevel() {
    switch (level) {
      case 1:
        ataque = 10;
        print('$nome está level $level e tem $ataque de dano de ataque');
        break;
      case 2:
        ataque = ataque * 2.15;
        ataque.toStringAsFixed(2);
        print('$nome está level $level e tem $ataque de dano de ataque');
        break;
      case 3:
        ataque = ataque * 3.69;
        ataque.toStringAsFixed(2);
        print('$nome está level $level e tem $ataque de dano de ataque');
        break;
      case 4:
        ataque = ataque * 4.9;
        ataque.toStringAsFixed(2);
        print('$nome está level $level e tem $ataque de dano de ataque');
        break;
      case 5:
        ataque = ataque * 5.4;
        ataque.toStringAsFixed(2);
        print('$nome está level $level e tem $ataque de dano de ataque');
        break;
      case 6:
        ataque = ataque * 6.12;
        ataque.toStringAsFixed(2);
        print('$nome está level $level e tem $ataque de dano de ataque');
        break;
      case 7:
        ataque = ataque * 7.52;
        ataque.toStringAsFixed(2);
        print('$nome está level $level e tem $ataque de dano de ataque');
        break;
      case 8:
        ataque = ataque * 8.71;
        ataque.toStringAsFixed(2);
        print('$nome está level $level e tem $ataque de dano de ataque');
      case 9:
        ataque = ataque * 9.3;
        ataque.toStringAsFixed(2);
        print('$nome está level $level e tem $ataque de dano de ataque');
        break;
      case 10:
        ataque = ataque * 9.9;
        ataque.toStringAsFixed(2);
        print('$nome está level $level e tem $ataque de dano de ataque');
        break;
      default:
        print('Erro, desculpe mas o level inserido é invalido');
        break;
    }
  }
}

class Enemy extends Hero {
  Enemy(String nome, int posicaoX, int posicaoY, int level, [double ataque = 10]) : super(nome, posicaoX, posicaoY, level, ataque);
  void mensagemLevel();
}
