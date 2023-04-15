import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.add,color: Colors.white, size: 35,),
        onPressed: (){
          
        },
        ),
      ),
      body: Padding(
      padding: const EdgeInsets.all(16.0),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Notas recentes')
          ],
        ),
      ),
    );
  }
}