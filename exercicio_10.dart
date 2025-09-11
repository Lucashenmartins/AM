import 'dart:io';
import 'dart:math';

void main() {
  int? numeroaleatorio;
  numeroaleatorio = Random().nextInt(100);
  print("Digite um número entre 0 e 100:");
  int? numero = int.parse(stdin.readLineSync()!);
  while (numero != numeroaleatorio) {
    if (numero! < numeroaleatorio && numero >= 0) {
      print("Muito baixo!");
    } else {
      print("Muito alto!");
    }
    print("Tente novamente:");
    numero = int.parse(stdin.readLineSync()!);
  }
  print("Parabéns! Você acertou o número $numeroaleatorio");
}
