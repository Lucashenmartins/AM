import 'dart:io';

void main() {
  int? opcao;
  print("Escolha uma opção:");
  print("1 - Espresso R\$ 3,00");
  print("2 - Latte R\$ 4,00");
  print("3 - Cappuccino R\$ 5,00");
  print("4 - Chá R\$ 2,50");
  opcao = int.parse(stdin.readLineSync()!);
  double? preco;
  String? escolha = "";
  switch (opcao) {
    case 1:
      escolha = "Espresso";
      preco = 3.00;
      break;
    case 2:
      escolha = "Latte";
      preco = 4.00;
      break;
    case 3:
      escolha = "Cappuccino";
      preco = 5.00;
      break;
    case 4:
      escolha = "Chá";
      preco = 2.50;
      break;
    default:
      print("Opção inválida");
  }
  if (preco != null) {
    print("Você escolheu $escolha.");
    print("O preço é R\$ $preco");
  }
}