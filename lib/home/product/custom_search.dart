import 'package:app_stroe/constants.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    var color = greyColor.withOpacity(0.8);
    return TextField(
      cursorColor: greyColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(padding),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.black),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: greyColor,
          ),
          hintStyle: const TextStyle(
              color: greyColor,
              fontSize: 14
          ),
          hintText: "Search your coffee"
      ),
    );
  }
}
