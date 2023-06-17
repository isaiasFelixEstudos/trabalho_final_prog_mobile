import 'package:flutter/material.dart';
import 'package:projeto_final/custom/appBarCustom.dart';
import 'package:projeto_final/custom/drawerCustom.dart';
import 'package:projeto_final/paginasauxiliar/estruturapesquisa.dart';

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
