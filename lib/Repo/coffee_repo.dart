import 'package:app_stroe/home/models/coffee.dart';
import 'package:app_stroe/home/server/api_service.dart';

class CoffeeRepository {
  final CoffeeAPI coffeeAPI = CoffeeAPI(); // Assuming you have an instance of CoffeeAPI

  Future<List<Coffee>> getCoffees() async {
    try {
      List<Coffee> coffeeList = await coffeeAPI.fetchCoffeeList();
      return coffeeList;
    } catch (e) {
      // Handle exceptions here
      rethrow;
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
      // Assuming you have a method to add coffee in your CoffeeAPI
      await coffeeAPI.addCoffee(
        name: name,
        price: price,
        image: image,
        smallDescription: smallDescription,
        description: description,
        rating: rating,
      );
    } catch (e) {
      // Handle exceptions here
      rethrow;
    }
  }
}
