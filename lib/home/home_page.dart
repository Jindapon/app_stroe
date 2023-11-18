import 'package:app_stroe/login/login.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: InkWell(
              highlightColor: Colors.transparent,
              onTap: () {
                print('Image tapped');
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
              child: Image.asset("df.jpg")// Corrected the image asset path
            ),
          )
        ],
      ),
    );
  }
}