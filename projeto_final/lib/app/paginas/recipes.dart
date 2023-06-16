import 'package:flutter/material.dart';
import 'package:projeto_final/app/ferramentas/appBarCustom.dart';
import 'package:projeto_final/app/ferramentas/drawerCustom.dart';
import 'package:projeto_final/funcoes/api_receitas.dart';

class RecipesPage extends StatefulWidget {
  final String category;

  const RecipesPage({required this.category});

  @override
  _RecipesPageState createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  List<dynamic> _meals = [];

  @override
  void initState() {
    super.initState();
    _fetchMealsByCategory(widget.category);
  }

  Future<void> _fetchMealsByCategory(String category) async {
    try {
      final meals = await fetchRecipesByCategory(category);
      setState(() {
        _meals = meals;
      });
    } catch (e) {
      print('Erro ao buscar as receitas: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Receitas de ${widget.category}'),
      drawer: CustomDrawer(),
      body: _meals.isNotEmpty
          ? ListView.builder(
              itemCount: _meals.length,
              itemBuilder: (context, index) {
                final meal = _meals[index];
                return Card(
                  child: ListTile(
                    title: Text(meal['strMeal']),
                    leading: Image.network(meal['strMealThumb']),
                  ),
                );
              },
            )
          : Center(
              child: Text('Nenhuma receita encontrada'),
            ),
    );
  }
}
