import 'package:anotai_vos/pages/nota_page.dart';
import 'package:anotai_vos/pages/todo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          NotaPage(),
          ToDoPage(),
        ],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.note_add), label: 'Notas'),
          BottomNavigationBarItem(icon: Icon(Icons.check_box), label: "To-do List"), 
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina, 
            duration: Duration(milliseconds: 400), 
            curve: Curves.ease
          );
        },
      ),
    );
  }
}