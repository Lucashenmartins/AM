import 'Produto.dart';

class ItemCompra {
  Produto produto;
  int quantidade;

  ItemCompra(this.produto, this.quantidade);

  double calcularSubtotal() {
    return produto.preco * quantidade;
  }

  @override
  String toString() {
    return '''${produto.nome} - Quantidade: $quantidade
     unid. X R\$ ${produto.preco.toStringAsFixed(2)} 
     = R\$ ${calcularSubtotal().toStringAsFixed(2)}''';
  }
}