void main() {
  Cachorro cachorro = new Cachorro('nome');
  Peixe peixe = new Peixe('peixe');
  cachorro.som();
  cachorro.comer();
  peixe.comer();
}

// Classe que não precisa de construtor, é usada quando queremos que apenas algumas classes adquiram um método
// sem ter que fazer com que todas herdem essa propriedade.
mixin Som {
  void som() {
    print("Som do animal!");
  }
}

// Sobreescrevendo método da super classe apenas para algumas classes filhas
mixin ComerMixin on Animal{
  @override
  void comer(){
    print("Não vou comer! Tô sem fome.");
    //super.comer();
  }
}

abstract class Animal {
  String nome;

  Animal(this.nome);

  void comer() {
    print("comendo!");
  }
}

class Cachorro extends Animal with Som {
  String nome;
  Cachorro(this.nome) : super(nome);
}

class Peixe extends Animal with ComerMixin {
  String nome;
  Peixe(this.nome) : super(nome);
}
