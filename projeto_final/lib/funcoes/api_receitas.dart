import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchMealCategories() async {
  final response = await http
      .get(Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['categories'];
  } else {
    throw Exception('Falha ao carregar as categorias de receitas');
  }
}

Future<List<dynamic>> fetchRecipesByCategory(String category) async {
  final response = await http.get(Uri.parse(
      'https://www.themealdb.com/api/json/v1/1/filter.php?c=$category'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['meals'];
  } else {
    throw Exception('Falha ao carregar as receitas da categoria $category');
  }
}

class RecipeApi {
  static Future<List<dynamic>> searchRecipes(String term) async {
    final response = await http.get(Uri.parse(
        'https://www.themealdb.com/api/json/v1/1/search.php?s=$term'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final meals = data['meals'];
      if (meals != null) {
        return List.from(meals);
      } else {
        return [];
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return [];
    }
  }
}
