import 'package:flutter/material.dart';
import 'package:projeto_final/custom/appBarCustom.dart';
import 'package:projeto_final/custom/drawerCustom.dart';
import 'package:projeto_final/paginasauxiliar/estruturaCulianria.dart';

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
