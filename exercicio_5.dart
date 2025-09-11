import 'dart:io';

void main() {
  String? login;
  String? senha;
  print("Digite seu login:");
  login = stdin.readLineSync()!;
  print("Digite sua senha:");
  senha = stdin.readLineSync()!;
  if (login == "admin" && senha == "1234") {
    print("Acesso concedido");
  } else {
    print("Acesso negado");
  }
}
