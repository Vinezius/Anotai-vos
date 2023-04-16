import 'package:anotai_vos/pages/cadastro_page.dart';
import 'package:flutter/material.dart';
import 'package:anotai_vos/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Boas vindas ao ",
          style: TextStyle(fontSize: 30),
        ),
        Text("Anotai-vos!",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20, width: 50),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                        (Route<dynamic> route) => false);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Faça seu Login",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                      children: [
                        TextSpan(
                          text: " clicando aqui!",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CadastroPage()),
                          (Route<dynamic> route) => false);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Ainda não tem uma conta? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                        children: [
                          TextSpan(
                            text: "Cadastre-se",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          TextSpan(
                            text: " clicando aqui!",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    )));
  }
}
