import 'dart:io';

void main() {
  double? peso;
  double? altura;

  print("Digite seu peso em kg:");
  peso = double.parse(stdin.readLineSync()!);

  print("Digite sua altura em metros:");
  altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);
  print("Seu IMC é: $imc");

  if (imc < 18.5) {
    print("Classificação: Abaixo do peso");
  } else if (imc >= 18.5 && imc < 25) {
    print("Classificação: Peso normal");
  } else if (imc >= 25 && imc < 30) {
    print("Classificação: Sobrepeso");
  } else  if (imc >= 30 && imc < 35) {
    print("Classificação: Obesidade grau 1");
  } else {
    print("Classificação: Obesidade grau 2"); 
    
  }
}

