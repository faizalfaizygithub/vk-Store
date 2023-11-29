import 'package:flutter/material.dart';

class ElevatedButtons extends StatelessWidget {
  final void Function() buttonAction;
  final String buttonText;
  final Color buttonColor;
  final Color txtColor;

  const ElevatedButtons({
    super.key,
    required this.buttonAction,
    required this.buttonText,
    required this.buttonColor,
    required this.txtColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: buttonAction,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          minimumSize: MaterialStateProperty.all(
            const Size(150, 50),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20, color: txtColor),
        ),
      ),
    );
  }
}
