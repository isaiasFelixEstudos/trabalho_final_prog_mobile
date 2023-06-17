import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> fetchRecipe(String mealId) async {
  try {
    final response = await http.get(
      Uri.parse('https://www.themealdb.com/api/json/v1/1/lookup.php?i=$mealId'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final recipeData = data['meals'][0];
      return recipeData;
    } else {
      throw Exception('Falha na pesquisa por ID');
    }
  } catch (error) {
    print('Error: $error');
    throw error;
  }
}

Future<List<dynamic>> fetchMealCategories() async {
  final response = await http
      .get(Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['categories'];
  } else {
    throw Exception('deu erro ao carregar as categorias de receitas');
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
      print('Status de falha: ${response.statusCode}.');
      return [];
    }
  }
}

class CuisineService {
  static Future<List<String>> fetchCuisines() async {
    final response = await http.get(
      Uri.parse('https://www.themealdb.com/api/json/v1/1/list.php?a=list'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final meals = data['meals'] as List<dynamic>;
      final cuisines = meals.map((meal) => meal['strArea'] as String).toList();
      return cuisines;
    } else {
      throw Exception('Error fetching cuisines');
    }
  }
}
