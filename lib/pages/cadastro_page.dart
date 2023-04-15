import 'package:anotai_vos/main.dart';
import 'package:anotai_vos/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Primeiro nome",
                ),
                validator: (value) {
                  return value!.isEmpty ? "Informe seu primeiro nome!" : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Sobrenome",
                ),
                validator: (value) {
                  return value!.isEmpty ? "Informe seu sobrenome!" : null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24),
              child: TextFormField(
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
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            formKey.currentState?.reset();
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Limpar"),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            formKey.currentState!.validate()
                                ? Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                        (Route<dynamic> route) => false
                                  )
                                : formKey.currentState!.validate();
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Cadastrar"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
