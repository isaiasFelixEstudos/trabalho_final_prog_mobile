import 'package:flutter/material.dart';
import 'package:projeto_final/app/paginasauxiliar/estruturaPerfil.dart';

class UpdateCadUser extends StatefulWidget {
  const UpdateCadUser({super.key});

  @override
  State<UpdateCadUser> createState() => _UpdateCadUserState();
}

class _UpdateCadUserState extends State<UpdateCadUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EstruturaUpdateCadUser(),
    );
  }
}
