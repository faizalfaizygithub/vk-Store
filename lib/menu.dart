import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String headLine;
  final String photo;
  final void Function() buttonAction;

  Menu(
      {required this.headLine,
      required this.photo,
      required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text(
        headLine,
        style: const TextStyle(
            wordSpacing: 10,
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Vk font',
            fontWeight: FontWeight.normal),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 300,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            photo,
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton.icon(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              const Size(80, 50),
            ),
            backgroundColor: MaterialStateProperty.all(
              Colors.purple,
            ),
            side: MaterialStateProperty.all(
                const BorderSide(color: Colors.black, width: 2))),
        onPressed: buttonAction,
        icon: const Icon(Icons.forward),
        label: const Text(
          'ADD TO CART',
          style: TextStyle(fontSize: 20),
        ),
      ),
    ]);
  }
}
