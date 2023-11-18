import 'package:app_stroe/home/models/coffee.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoffeeAPI {
  final String apiUrl = 'http://your_api_url_here'; // Replace with your API endpoint

  Future<List<Coffee>> fetchCoffeeList() async {
    try {
      final response = await http.get(Uri.parse('$apiUrl/coffees'));

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        List<Coffee> coffeeList = data.map((json) => Coffee.fromJson(json)).toList();
        return coffeeList;
      } else {
        throw Exception('Failed to load coffee data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to fetch coffee list: $e');
    }
  }

  Future<void> addCoffee({
    required String name,
    required String price,
    required String image,
    required String smallDescription,
    required String description,
    required double rating,
  }) async {
    try {
      // Implement logic to add a coffee
      // Use http.post or any suitable method here
    } catch (e) {
      throw Exception('Failed to add coffee: $e');
    }
  }
}
