void main() {
  Cachorro cachorro = new Cachorro('nome');
  cachorro.som();
  cachorro.comer();
}

// Classe pai
// A classe abstrata não pode ser instanciada. Por isso, ela é usada como
// super classe para herdar algo
abstract class Animal {
  String nome;

  Animal(this.nome);

  void comer() {
    print("comendo!");
  }

  // Se eu não implementar o void aqui serei obrigado a fazer nas classes filhas
  void som();
}

// Classe filha
class Cachorro extends Animal {
  String nome;

  // Super para acessar a String nome da class Animal
  Cachorro(this.nome) : super(nome);

  void som() {
    print("Latir!");
  }
}
