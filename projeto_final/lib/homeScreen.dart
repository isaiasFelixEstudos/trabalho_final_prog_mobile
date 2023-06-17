import 'package:flutter/material.dart';
import 'package:projeto_final/custom/appBarCustom.dart';
import 'package:projeto_final/custom/drawerCustom.dart';
import 'package:projeto_final/pgHomeScreen/homeapp.dart';
import 'package:projeto_final/pgHomeScreen/favoritosapp.dart';
import 'package:projeto_final/pgHomeScreen/naofavoritosapp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _paginaSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Home Screen'),
      drawer: CustomDrawer(),
      body: IndexedStack(
        index: _paginaSelecionada,
        children: [
          HomeApp(),
          FavoritosApp(),
          NaoFavoritosApp(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaSelecionada,
        onTap: (int? novoValor) {
          setState(() {
            _paginaSelecionada = novoValor!;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
              color: Colors.red,
            ),
            label: 'Culinarias',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: Colors.red,
            ),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_add,
              color: Colors.red,
            ),
            label: 'Receitas não Favoritas',
          ),
        ],
      ),
    );
  }
}
