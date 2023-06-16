import 'package:flutter/material.dart';
import 'package:projeto_final/app/ferramentas/appBarCustom.dart';
import 'package:projeto_final/app/ferramentas/drawerCustom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Home Screen'),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('App'),
      ),
    );
  }
}
