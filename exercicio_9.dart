import 'dart:io';

void main() {
  double? salario;
  double? imposto;
  print("Digite seu salário:");
  salario = double.parse(stdin.readLineSync()!);
  if (salario <= 1903.98) {
    imposto = 0;
    print("Isento");
  } else if (salario <= 2826.65) {
    imposto = salario * 0.075;
    print("Imposto a ser pago: R\$ $imposto");
  } else if (salario <= 3751.05) {
    imposto = salario * 0.15;
    print("Imposto a ser pago: R\$ $imposto");
  } else if (salario <= 4664.68) {
    imposto = salario * 0.225;
    print("Imposto a ser pago: R\$ $imposto");
  } else {
    imposto = salario * 0.275;
    print("Imposto a ser pago: R\$ $imposto");
  }
}