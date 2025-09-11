import 'dart:io';

void main() {
  int? idade;

  print("Digite sua idade:");
  idade = int.parse(stdin.readLineSync()!);

  if (idade >= 16) {
    print("pode votar");
      } else {
        print("não vota");
      }
}
