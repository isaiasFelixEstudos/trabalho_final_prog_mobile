import 'package:flutter/material.dart';
import 'package:projeto_final/app/ferramentas/appBarCustom.dart';
import 'package:projeto_final/app/ferramentas/drawerCustom.dart';
import 'package:projeto_final/app/paginasauxiliar/estruturaCulianria.dart';

class PaginaCulianria extends StatefulWidget {
  const PaginaCulianria({super.key});

  @override
  State<PaginaCulianria> createState() => _PaginaCulianriaState();
}

class _PaginaCulianriaState extends State<PaginaCulianria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Culinarias'),
      drawer: CustomDrawer(),
      body: EstruturaCulinarias(),
    );
  }
}
