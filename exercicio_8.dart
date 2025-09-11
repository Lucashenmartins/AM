import 'dart:io';

void main() {
  double? lado1;
  double? lado2;
  double? lado3;
  print("Digite o valor do primeiro lado do triangulo:");
  lado1 = double.parse(stdin.readLineSync()!);
  print("Digite o valor do segundo lado do triangulo:");
  lado2 = double.parse(stdin.readLineSync()!);
  print("Digite o valor do terceiro lado do triangulo:");
  lado3 = double.parse(stdin.readLineSync()!);
  if (lado1 == lado2 && lado2 == lado3) {
    print("Triângulo Equilátero");
  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print("Triângulo Isósceles");
  } else {
    print("Triângulo Escaleno");
  }
}