import 'package:flutter/material.dart';
import 'package:vkstore/elevatedButon.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.only(top: 140, left: 20, right: 20),
          height: 450,
          width: 500,
          color: Colors.white,
          child: Column(children: const [
            Text(
              'SignUp',
              style: TextStyle(
                  color: Colors.black,
                  decorationColor: Colors.blue,
                  fontSize: 50,
                  fontFamily: 'vk font',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.text,
              enabled: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 6, 171, 221),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                  hintText: 'eg: faizal faizy',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  helperText: 'please enter your Username',
                  helperStyle: TextStyle(
                    color: Color.fromARGB(255, 20, 4, 3),
                    fontSize: 15,
                  ),
                  suffixText: 'OK'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.text,
              enabled: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 6, 171, 221),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: 'password',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  helperText: 'please enter your password',
                  helperStyle: TextStyle(
                    color: Color.fromARGB(255, 20, 4, 3),
                    fontSize: 15,
                  ),
                  suffixText: 'OK'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.text,
              enabled: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 6, 171, 221),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: 'Address',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  helperText: 'please enter your address',
                  helperStyle: TextStyle(
                    color: Color.fromARGB(255, 20, 4, 3),
                    fontSize: 15,
                  ),
                  suffixText: 'OK'),
            ),
          ]),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButtons(
            buttonAction: () {
              Navigator.of(context).pushNamed('productsScreen');
            },
            buttonText: 'Submit',
            buttonColor: Color.fromARGB(255, 30, 105, 11),
          ),
          ElevatedButtons(
              buttonAction: () {
                Navigator.of(context).pop('homePage');
              },
              buttonText: 'Cancel',
              buttonColor: Colors.blueGrey)
        ]),
      ]),
    );
  }
}
