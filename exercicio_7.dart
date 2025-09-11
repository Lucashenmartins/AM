import 'dart:io';

void main() {
  int? opcao;
  print("Escolha uma opção:");
  print("1 - saldo");
  print("2 - saque");
  print("3 - depósito");
  opcao = int.parse(stdin.readLineSync()!);
  double? saldo = 1000.0;
  switch (opcao) {
    case 1:
      print("Seu saldo é R\$ $saldo");
      break;
    case 2:
      print("Digite o valor do saque:");
      double? valorSaque = double.parse(stdin.readLineSync()!);
      if (valorSaque <= saldo && valorSaque > 0) {
        saldo -= valorSaque;
        print("Saque realizado com sucesso!");
        print("Saldo atual: R\$ $saldo");
      } else {
        print("Saldo insuficiente ou valor inválido.");
      }
      break;
    case 3:
      print("Digite o valor do depósito:");
      double? valorDeposito = double.parse(stdin.readLineSync()!);
      if (valorDeposito > 2) {
        saldo += valorDeposito;
        print("Depósito realizado com sucesso!");
        print("Saldo atual: R\$ $saldo");
      }
      else{
        print("Valor inválido para depósito.");
      }
      break;
    default:
      print("Opção inválida");
  }
}