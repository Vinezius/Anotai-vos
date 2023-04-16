import 'package:anotai_vos/main.dart';
import 'package:anotai_vos/pages/cadastro_page.dart';
import 'package:anotai_vos/pages/nav_page.dart';
import 'package:anotai_vos/pages/nota_page.dart';
import 'package:anotai_vos/pages/recuperar_senha.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: TextFormField(
                // controller: _email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "E-mail",
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Informe seu e-mail!";
                  } else if (!value.contains('@')) {
                    return "Insira um e-mail válido.";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: TextFormField(
                obscureText: true,
                // controller: _email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Senha",
                ),
                validator: (value) {
                  return value!.isEmpty ? "Informe sua senha!" : null;
                },
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      formKey.currentState!.validate()
                          ? Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavPage()),
                              (Route<dynamic> route) => false)
                          : formKey.currentState!.validate();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Text("Entrar"),
                    ),
                  ),
                  SizedBox(height: 20, width: 50),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CadastroPage()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Ainda não tem uma conta? ",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecuperarSenhaPage()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Esqueceu a senha?",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                        children: [
                          TextSpan(
                            text: " Recupere clicando aqui!",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
