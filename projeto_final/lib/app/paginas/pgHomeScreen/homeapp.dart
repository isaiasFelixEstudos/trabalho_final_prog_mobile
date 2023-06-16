import 'package:flutter/material.dart';
import 'package:projeto_final/funcoes/api_receitas.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  List<dynamic> categories = [];
  void initState() {
    super.initState();
    fetchMealCategories().then((result) {
      setState(() {
        categories = result;
      });
    }).catchError((error) {
      print('Erro ao carregar as categorias de receitas: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text(categories[index]['strCategory']),
            leading: Image.network(categories[index]['strCategoryThumb']),
          ),
        );
      },
    );
  }
}
