import 'package:app_stroe/home/models/coffee.dart';
import 'package:app_stroe/home/product/coffee_tile.dart';
import 'package:app_stroe/home/server/api_service.dart';
import 'package:flutter/material.dart';

class PageCoffee extends StatefulWidget {
  const PageCoffee({Key? key}) : super(key: key);

  @override
  _PageCoffeeState createState() => _PageCoffeeState();
}

class _PageCoffeeState extends State<PageCoffee> {
  late Future<List<Coffee>> futureCoffeeList;
  late CoffeeAPI coffeeAPI; // Declare an instance variable

  @override
  void initState() {
    super.initState();
    coffeeAPI = CoffeeAPI(); // Initialize the instance
    futureCoffeeList = coffeeAPI.fetchCoffeeList(); // Call the method using the instance
  }

  @override
  Widget build(BuildContext context) {
    // Existing code...

    return Scaffold(
      body: FutureBuilder<List<Coffee>>(
        future: futureCoffeeList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data available'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CoffeeTile(coffee: snapshot.data![index]);
              },
            );
          }
        },
      ),
    );
  }
}
