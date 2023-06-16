import 'package:flutter/material.dart';
import 'package:projeto_final/app/paginasauxiliar/estruturaLogin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TelaDeLogin(),
    );
  }
}
