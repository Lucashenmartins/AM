import 'dart:io';

void main() {
  double? preco;

  print("Digite valor da compra:");
  preco = double.parse(stdin.readLineSync()!);
  if (preco >= 100) {
    double desconto = preco * 0.10;
    double valorFinal = preco - desconto;
    print("Compra com desconto: $valorFinal");
  } else {
    print("Compra sem desconto: $preco");
  }
}
