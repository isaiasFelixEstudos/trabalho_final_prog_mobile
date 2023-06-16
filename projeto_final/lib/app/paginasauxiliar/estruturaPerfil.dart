import 'package:flutter/material.dart';
//import 'dart:async';

class EstruturaUpdateCadUser extends StatefulWidget {
  const EstruturaUpdateCadUser({super.key});

  @override
  State<EstruturaUpdateCadUser> createState() => _EstruturaUpdateCadUserState();
}

class _EstruturaUpdateCadUserState extends State<EstruturaUpdateCadUser> {
  /*
  Future<void> atualizarUsuarioAuthFirebase(
      context, String email, String displayName) async {
    final user = await FirebaseAuth.instance.currentUser;
    if (user != null) {
      user.updateDisplayName(displayName);
      user.updateEmail(email);
    }
  }
  */
  final _formkey = GlobalKey<FormState>();
  //bool _emailValido = false;
  bool _formValido = false;
  TextEditingController _emailvalido = TextEditingController();
  TextEditingController _nomevalido = TextEditingController();

  void _validacaoFormulario() {
    _formkey.currentState?.validate();
  }

  String _validarEntrada(String? mensagem) {
    if (mensagem == null || mensagem.isEmpty) {
      return 'Preencha o campo';
    } else {
      return 'Campo preenchido';
    }
  }

  @override
  void initState() {
    super.initState();
    _emailvalido.addListener(_validacaoFormulario);
    _nomevalido.addListener(_validacaoFormulario);
  }

  @override
  void dispose() {
    super.dispose();
    _emailvalido.removeListener(_validacaoFormulario);
    _nomevalido.removeListener(_validacaoFormulario);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _emailvalido,
              decoration: InputDecoration(
                errorStyle:
                    TextStyle(color: _formValido ? Colors.blue : Colors.red),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _formValido ? Colors.blue : Colors.red)),
                labelText: "Email",
              ),
              onChanged: (value) {
                setState(() {
                  _formValido = value.isNotEmpty;
                });
              },
              validator: _validarEntrada,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _nomevalido,
              decoration: InputDecoration(
                errorStyle:
                    TextStyle(color: _formValido ? Colors.blue : Colors.red),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _formValido ? Colors.blue : Colors.red)),
                labelText: "Nome",
              ),
              onChanged: (value) {
                setState(() {
                  _formValido = value.isNotEmpty;
                });
              },
              validator: _validarEntrada,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                /*
                if (_formkey.currentState!.validate()) {
                  atualizarUsuarioAuthFirebase(
                      context, _emailvalido.text, _nomevalido.text);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        Timer(Duration(seconds: 2), () {
                          Navigator.of(context).pop();
                        });
                        return AlertDialog(
                          content: Text('Cadastro atualizado com sucesso'),
                        );
                      });
                }*/
              },
              child: Text('Atualizar Cadastro'),
            ),
          ],
        ),
      ),
    );
  }
}
