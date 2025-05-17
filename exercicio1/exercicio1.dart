import 'dart:io';

void main(){
  int? opcao;
  var tarefas = [];

  do{
    print('====Menu====\n1 - Adicionar Tarefa\n2 - Listar tarefas\n3 - Remover Tarefa\n0 - Sair');
    stdout.write("Escolha uma opção:");
    opcao = int.tryParse(stdin.readLineSync() ?? '');

  switch(opcao){
    case 1:
      print('Digite o nome da tarefa que gostaria de adicionar');
      String? tarefa = stdin.readLineSync();
      if(tarefa != null && tarefa.trim().isNotEmpty){
      tarefas.add(tarefa);
      break;
      }else{
        print('Tarefa Inválida!!');
        break;
      }
    case 2:
    if(tarefas.isEmpty){
      print("A lista de tarefas está vázia!");
      break;
    }else{
      print('======Tarefas:======');
      for(int i = 0; i < tarefas.length; i++){
        print('$i- ${tarefas[i]}');
      }
      break;
    }
    case 3:
      if(tarefas.isEmpty){
        print('nao tem como remover algo de uma lista vazia');
        break;
        
      }else{
        print("Digite o número da tarefa para remover:");
        for(int i = 0; i < tarefas.length; i++){
          print('$i- ${tarefas[i]}');
        }
        int indice = int.parse(stdin.readLineSync()!);
        tarefas.remove(tarefas[indice]);
        break;
      }
    case 0:
      print('Obrigado por participar!!');
      break;
    default:
      print('Opção inválida!!');
    }
  } while(opcao != 0);


}