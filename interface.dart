void main() {
  Pessoa pessoa = new Pessoa();
  Joao joao = new Joao();
  pessoa.caminhar();
  joao.caminhar();
}

// Interface, serve como modelo para outras classes.
class Pessoa {
  void caminhar() {
    print("Posso caminhar");
  }
}

// Obrigatório sobreescrever os métodos da interface
class Joao implements Pessoa {
  @override
  void caminhar() {
    print("Não posso caminhar");
  }
}
