import 'package:app_stroe/constants.dart';
import 'package:flutter/material.dart';
import '../models/coffee.dart'; // Update this import based on your project structure


class CustomTab extends StatefulWidget {
  const CustomTab({Key? key}) : super(key: key); // Corrected constructor

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  final tabs = ["Hot Coffee", "Cold Coffee", "Others"];
  var selectedTab = "Cold Coffee";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: tabs.map((e) => GestureDetector(
            onTap: () => setState(() {
                  selectedTab = e;
                }),
            child: Text(
              e,
              style: e == selectedTab ? boldStyle() : normalStyle(),
            ),
          )).toList(),
    );
  }
  TextStyle boldStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 18,
    );
  }

  TextStyle normalStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w500,
      color: greyColor,
      fontSize: 18,
    );
  }
}

