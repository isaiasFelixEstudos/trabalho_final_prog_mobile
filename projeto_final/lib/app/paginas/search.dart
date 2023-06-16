import 'package:flutter/material.dart';
import 'package:projeto_final/app/ferramentas/appBarCustom.dart';
import 'package:projeto_final/app/ferramentas/drawerCustom.dart';
import 'package:projeto_final/app/paginasauxiliar/estruturapesquisa.dart';

class SearchRecipe extends StatefulWidget {
  const SearchRecipe({super.key});

  @override
  State<SearchRecipe> createState() => _SearchRecipeState();
}

class _SearchRecipeState extends State<SearchRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Pesquisar Receita'),
      drawer: CustomDrawer(),
      body: RecipeSearch(),
    );
  }
}
