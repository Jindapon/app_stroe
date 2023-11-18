
import 'package:app_stroe/home/product/coffeePage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 100),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Log in to',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'Your accout',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 40, right: 40),
                        height: 50,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: "Username",
                            contentPadding: EdgeInsets.all(8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 40, right: 40),
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            contentPadding: const EdgeInsets.all(8),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: Text('forget?'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, right: 40),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Text(
                              'Remember',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          height: 50,
                          width: double.infinity,
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return  PageCoffee();
                              }));
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.greenAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                          ),
                          height: 50,
                          width: double.infinity,
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PageCoffee();
                              }));
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: const BorderSide(color: Colors.grey),
                              ),
                            ),
                            child: const Text(
                              'Log with facebook',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Don't have account? Sing up"),
                        const SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



