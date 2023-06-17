import 'package:flutter/material.dart';
import 'package:projeto_final/paginasauxiliar/estruturaPerfil.dart';
import 'package:projeto_final/custom/appBarCustom.dart';
import 'package:projeto_final/custom/drawerCustom.dart';

class UpdateCadUser extends StatefulWidget {
  const UpdateCadUser({super.key});

  @override
  State<UpdateCadUser> createState() => _UpdateCadUserState();
}

class _UpdateCadUserState extends State<UpdateCadUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Login'),
      drawer: CustomDrawer(),
      body: EstruturaUpdateCadUser(),
    );
  }
}
