import 'package:anotai_vos/models/Item.dart';
import 'package:anotai_vos/models/todo.dart';

class ToDoRepository {
  static List<ToDo> tabela = [
    ToDo(titulo: 'Primeira To-do List', data: '16/12/2023', item: Item(id: 1, todoText: 'teste')),
    ToDo(titulo: 'Lista de portas', data: '26/03/2023', item: Item(id: 1, todoText: '8080')),
    ToDo(titulo: 'Figure.09', data: '00/00/0000', item: Item(id: 1, todoText: 'fsafasfsafas')),
  ];
}