import 'package:anotai_vos/models/Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ToDoItem extends StatelessWidget {
  final Item item;
  final onItemChecked;
  final onDeleteItem;



  const ToDoItem({Key? key, required this.item, required this.onItemChecked, required this.onDeleteItem,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: ListTile(
        onTap: () {
          onItemChecked(item);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.green,
        leading: Icon(
          item.check ? Icons.check_box : Icons.check_box_outline_blank, 
          color: Colors.amber,),
        title: Text(item.todoText),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 15,
            icon: Icon(Icons.delete),
            onPressed: () {

              onDeleteItem(item.id);
            },
          ),
        ),
      )
    );
  }
}