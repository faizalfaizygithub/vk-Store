import 'package:flutter/material.dart';
import 'package:vkstore/assets.dart';
import 'package:vkstore/elevatedButon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: 300,
          margin: const EdgeInsets.all(50),
          child: CircleAvatar(
            backgroundImage: AssetImage(logovk),
            radius: 90,
          ),
        ),
        ElevatedButtons(
          buttonAction: () {
            Navigator.of(context).pushNamed('loginpage');
          },
          buttonText: 'Login',
          buttonColor: Colors.blue,
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButtons(
          buttonAction: () {
            Navigator.of(context).pushNamed('/signupPage');
          },
          buttonText: 'Signup',
          buttonColor: Colors.purple,
        ),
      ]),
    );
  }
}
