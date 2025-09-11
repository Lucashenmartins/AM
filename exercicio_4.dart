import 'dart:io';

void main() {
  double? nota1;
  double? nota2;

  print('digite a primeira nota:');
  nota1 = double.parse(stdin.readLineSync()!);

  print('digite a segunda nota:');
  nota2 = double.parse(stdin.readLineSync()!);
  double media = (nota1 + nota2) / 2;
  if (media >= 7) {
    print('aprovado');
  } else if (media >= 4 && media < 7) {
    print('recuperação');
  } else {
    print('reprovado');
  }
}
