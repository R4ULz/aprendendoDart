import 'dart:io';

void main(){
  print('Digite seu nome: ');
  String nome = stdin.readLineSync() ?? "Usuário desconhecido";

  print('Digite sua altura: ');
  double altura = double.parse(stdin.readLineSync()!);

  print('Digite seu peso: ');
  double peso = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);

  if(imc < 18.5){
    print('Abaixo do peso');
  }else if(imc <25){
    print('Peso normal');
  }else if(imc <30){
    print('Sobrepeso');
  }else{
    print('Obesidade');
  }
}

