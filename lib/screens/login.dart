import 'package:flutter/material.dart';
import 'package:vkstore/assets.dart';
import 'package:vkstore/data.dart';
import 'package:vkstore/elevatedButon.dart';
import 'package:vkstore/screens/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(logo6),
          ),
        ),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(children: [
              const Text(
                'Login',
                style: TextStyle(
                    color: Colors.black,
                    decorationColor: Colors.blue,
                    fontSize: 50,
                    fontFamily: 'vk font',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal),
              ),
              Gyap(space: 30),
              const Datas(
                labeltxt: 'Username',
                hinttxt: 'eg: Muhammed Faisal v',
                helprtxt: 'Please enter your username',
              ),
              Gyap(space: 20),
              const Datas(
                  labeltxt: 'Password',
                  hinttxt: 'Password',
                  helprtxt: 'Please enter your password'),
              Gyap(space: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                ElevatedButtons(
                  txtColor: Colors.black,
                  buttonAction: () {
                    Navigator.of(context)
                        .pushReplacementNamed('productsScreen');
                  },
                  buttonText: 'Submit',
                  buttonColor: Colors.white,
                ),
                ElevatedButtons(
                    txtColor: Colors.white,
                    buttonAction: () {
                      Navigator.of(context).pop('homePage');
                    },
                    buttonText: 'Cancel',
                    buttonColor: Colors.black)
              ]),
            ]),
          ),
        ]),
      ),
    );
  }
}
