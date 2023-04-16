import 'package:anotai_vos/models/todo.dart';
import 'package:anotai_vos/repositories/todo_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    final tabela = ToDoRepository.tabela;
    String input = '';

    return Scaffold(
      appBar: AppBar(
      title: const Text('Home'),
      centerTitle: true,
      ),
      floatingActionButton: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add,color: Colors.white, size: 35,),
          onPressed: (){
            showDialog(context: context, 
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text('Adicionar uma To-do List'),
                  content: TextField(
                    decoration: InputDecoration(
                      hintText: 'Nova To-do List'
                      ),
                    onChanged: (String value){
                      input = value;
                    },
                  ),
                  actions: [
                    TextButton(
                      onPressed: ()
                      {
                        setState(() {
                          ToDo(titulo: input, data: '26/03/2023', item: ['Item 1', 'Item 2']);
                        });
                      Navigator.of(context).pop();
                      }, 
                      child: Text("ADD")
                    )
                  ],
                );
              }
            );
          },
        ),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int todo) {
          return ListTile(
            title: Text(tabela[todo].titulo),
            trailing: Text(tabela[todo].data),
          );
        }, 
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, __) => Divider(), 
        itemCount: tabela.length)
    );
  }
}