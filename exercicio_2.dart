import 'dart:io';

void main() {
  double? preco;

  print("Digite valor da compra:");
  preco = double.parse(stdin.readLineSync()!);
  if (preco >= 200) {
    double desconto = preco * 0.10;
    double valorFinal = preco - desconto;
    print("Compra de $preco com desconto de $desconto no valor final de: $valorFinal");
  } else {
    print("Compra sem desconto: $preco");
  }
}
