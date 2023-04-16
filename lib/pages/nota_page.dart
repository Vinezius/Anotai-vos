import 'package:anotai_vos/models/nota.dart';
import 'package:flutter/material.dart';
import 'package:anotai_vos/repositories/nota_repository.dart';

class NotaPage extends StatefulWidget {
  @override
  _NotaPageState createState() => _NotaPageState();
}

class _NotaPageState extends State<NotaPage> {

  @override
  Widget build(BuildContext context) {
    final tabela = NotaRepository.tabela;
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
                title: Text('Adicionar uma nota'),
                content: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nova Nota'
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
                        Nota(titulo: input, data: '26/03/2023', conteudo: '80, 8080, 20000, 3268');
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
        itemBuilder: (BuildContext context, int nota) {
          return ListTile(
            title: Text(tabela[nota].titulo),
            trailing: Text(tabela[nota].data),
            subtitle: Text(tabela[nota].conteudo),
          );
        }, 
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, __) => Divider(), 
        itemCount: tabela.length)
    );
  }
}