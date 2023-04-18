import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OpenNotaPage extends StatefulWidget {
  const OpenNotaPage({super.key});

  @override
  State<OpenNotaPage> createState() => _OpenNotaPageState();
}

class _OpenNotaPageState extends State<OpenNotaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Título da Nota"), 
        centerTitle: true,),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Escreva aqui'),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
              ),
            ],
          ),
        ),
      );
  }
}