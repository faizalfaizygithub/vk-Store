import 'package:flutter/material.dart';
import 'package:vkstore/assets.dart';

class ProductDeatails extends StatelessWidget {
  final String avathar;
  final String heading;
  int counter = 0;

  ProductDeatails({required this.avathar, required this.heading});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          CircleAvatar(
            backgroundImage: AssetImage(avathar),
            radius: 70,
          ),
          Positioned(
            bottom: -3,
            left: 22,
            child: OutlinedButton.icon(
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
              label: const Text(
                'ADD',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                counter = counter + 1;
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60))),
                side: MaterialStateProperty.all(const BorderSide(
                  color: Colors.blue,
                  width: 4,
                )),
                minimumSize: MaterialStateProperty.all(
                  const Size(20, 40),
                ),
              ),
            ),
          ),
        ]),
        const VerticalDivider(
          width: 30,
        ),
        Text(
          heading,
          style: const TextStyle(
              fontFamily: 'Vk font',
              color: Color.fromARGB(255, 12, 33, 51),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
