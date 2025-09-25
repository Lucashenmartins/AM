import 'dart:io';
import 'Produto.dart';
import 'carrinho_compra.dart';
import 'item_compra.dart';

class PDVApp {
  CarrinhoCompra carrinho = CarrinhoCompra();

    void iniciar() {
      print('== Bem-vindo ao PDV ==\n');
      bool continuar = true;
      while (continuar) {
        print('Deseja adicionar um produto? (S/N)\n');
        String? resposta = stdin.readLineSync()?.toUpperCase() ?? 'N';

          if(resposta == 'S'){
           ItemCompra item = lerDadosProduto();
           carrinho.adicionarItem(item);
           print('Produto adicionado ao carrinho.\n');
          }else{
          continuar = false;
          }
      }
         if(carrinho.isEmpty()){
         print('Carrinho vazio. Nenhum produto adicionado.\n');
         print('== Obrigado por usar o PDV ==\n');
        }else{
        finalizarCompra();
      }
    }
      ItemCompra lerDadosProduto() {
        print('== Adicionar Produto ==\n');
        print('Digite o nome do produto:');
        String nome = stdin.readLineSync() ?? 'Produto sem nome';
        double preco = 0.0;
        bool precoValido = false;
        while (!precoValido) {
          print('Digite o preço do produto:');
          String? precoInput = stdin.readLineSync() ?? '0.0';
          preco = double.parse(precoInput.replaceAll(',', '.'));
          if (preco <= 0) {
            print('Preço inválido. Tente novamente.\n');
          } else {
            precoValido = true;
          }
        }
        int quantidade = 0;
        bool quantidadeValida = false;
        while (!quantidadeValida) {
          print('Digite a quantidade:');
          String? quantidadeInput = stdin.readLineSync() ?? '0';
          quantidade = int.parse(quantidadeInput);
          if (quantidade <= 0) {
            print('Quantidade inválida. Tente novamente.\n');
          } else {
            quantidadeValida = true;
          }
        }

        Produto produto = Produto(nome, preco);
        return ItemCompra(produto, quantidade);
      }
    void finalizarCompra(){
      double total = carrinho.calcularTotal();
      double desconto = carrinho.calcularDesconto();
      double totalComDesconto = total - desconto;
      print('== Resumo da Compra ==\n');
      print('itens no carrinho:\n');
      for(int i = 0; i < carrinho.itens.length; i++){
        print('${i + 1}. ${carrinho.itens[i]}');
      }
  print('Total de itens: ${carrinho.itens.length}\n');
  print('Total: R\$ ${total.toStringAsFixed(2)}\n');

  if (desconto > 0) {
    print('Desconto aplicado: R\$ ${desconto.toStringAsFixed(2)}\n');
    print('Total com desconto: R\$ ${totalComDesconto.toStringAsFixed(2)}\n');
  }
  print('== Obrigado por usar o PDV ==\n');

}
}
    
