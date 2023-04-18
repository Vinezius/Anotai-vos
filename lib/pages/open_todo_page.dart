import 'package:anotai_vos/models/Item.dart';
import 'package:anotai_vos/widget/todo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OpenToDoPage extends StatefulWidget {
  const OpenToDoPage({super.key});

  @override
  State<OpenToDoPage> createState() => _OpenToDoPageState();
}

class _OpenToDoPageState extends State<OpenToDoPage> {
  final itemList = Item.itemList();
  final _itemController = TextEditingController();

  void _handleCheckedItem(Item item) {
    setState(() {
      item.check = !item.check;
    });
  }

  void _deleteItem(int id) {
    setState(() {
      itemList.removeWhere((item) => item.id == id);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Apagado com sucesso!'),
      ),
    );
  }

  void _addItem(String item) {
    setState(() {
      itemList
          .add(Item(id: DateTime.now().millisecondsSinceEpoch, todoText: item));
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Adicionado com sucesso!'),
      ),
    );
    _itemController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Título To-do List'),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      for (Item item in itemList)
                        ToDoItem(
                            item: item,
                            onItemChecked: _handleCheckedItem,
                            onDeleteItem: _deleteItem)
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: _itemController,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Adicionar novo item',
                          border: InputBorder.none),
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                    ),
                    child: ElevatedButton(
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 40),
                      ),
                      onPressed: () {
                        _addItem(_itemController.text);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(60, 65),
                        elevation: 10,
                        alignment: Alignment(0, -2),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
