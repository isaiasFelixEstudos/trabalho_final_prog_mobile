import 'package:flutter/material.dart';
import 'package:projeto_final/app/paginasauxiliar/estruturaLogin.dart';
import 'package:projeto_final/app/ferramentas/appBarCustom.dart';
import 'package:projeto_final/app/ferramentas/drawerCustom.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Login'),
      drawer: CustomDrawer(),
      body: TelaDeLogin(),
    );
  }
}
