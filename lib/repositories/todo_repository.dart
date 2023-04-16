import 'package:anotai_vos/models/todo.dart';

class ToDoRepository {
  static List<ToDo> tabela = [
    ToDo(titulo: 'Primeira To-do List', data: '16/12/2023', item: ['Item 1', 'Item 2']),
    ToDo(titulo: 'Lista de portas', data: '26/03/2023', item: ['Lavar a louça', 'Passear com o cachorro', 'Lavar a roupa']),
    ToDo(titulo: 'Figure.09', data: '00/00/0000', item: ['Cometer', 'Suicídio']),
  ];
}