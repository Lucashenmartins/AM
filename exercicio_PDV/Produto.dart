class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);
  @override
  String toString() {
    return 'Produto: $nome - Preço: R\$ ${preco.toStringAsFixed(2)}';
  }
}
