import 'package:flutter/material.dart';
import 'package:app_stroe/constants.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/icons/images.jpg"),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: padding, right: padding, top: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
              width: 40,
              // อันที่จะเพิ่มไอคอนขีดยาว 2 ขีดแนวนอน
              child: Row(
                children: [
                  Icon(
                    Icons.align_horizontal_left, // ใช้ไอคอนขีดเส้นแนวนอน
                    color: Colors.white,
                    size: 25, // ปรับขนาดตามที่ต้องการ
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "It's a Great",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                    children: [
                      TextSpan(
                        text: " Day for\nCoffee",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
