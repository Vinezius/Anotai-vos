import 'package:anotai_vos/models/Item.dart';

class ToDo {

//Integer id;
  String titulo;
  String data;
  Item? item;

  ToDo({
    required this.titulo,
    required this.data,
    this.item,
  });
}