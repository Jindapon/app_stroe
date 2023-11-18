import 'package:app_stroe/constants.dart';
import 'package:app_stroe/home/product/detail_page.dart';
import 'package:flutter/material.dart';
import '../models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({Key? key, required this.coffee}) : super(key: key);

  final Coffee coffee;


  @override
  Widget build(BuildContext context) {
    var tileHeight = 120.0;
    return SizedBox(
      height:  tileHeight,
      child: Row(
        children: [
          getImage(tileHeight),
          coffeeDetails(context),
          plusIcon(context),
        ],
      ),
    );
  }
  Container plusIcon(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: IconButton(
        icon: const Icon(Icons.add,
          color: Colors.white,
        ),
        iconSize: 15,
        onPressed: () {
          Navigator.push(
              context as BuildContext,
              MaterialPageRoute(
                builder: (context) => CoffeeDetailPage(
                    coffee: coffee),
              )
          );
        },
      ),
    );
  }
  Padding coffeeDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          boldText(coffee.name),
          Text(
            coffee.smallDescription,
            style: const TextStyle(
              fontSize: 14,
              color: greyColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(flex: 5,),
          boldText(coffee.price),
        ],
      ),
    );
  }
  Text boldText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Container getImage(double tileHeight) {
    return Container(
      height: tileHeight,
      width: tileHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(coffee.image),
        ),
      ),
    );
  }

}

