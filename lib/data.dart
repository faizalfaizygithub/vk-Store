import 'package:flutter/material.dart';

class Datas extends StatelessWidget {
  final String labeltxt;
  final String hinttxt;
  final String helprtxt;
  const Datas(
      {super.key,
      required this.labeltxt,
      required this.hinttxt,
      required this.helprtxt});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: TextField(
          keyboardType: TextInputType.text,
          enabled: true,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              labelText: labeltxt,
              labelStyle: const TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
              hintText: hinttxt,
              hintStyle: const TextStyle(
                color: Colors.white60,
                fontSize: 18,
              ),
              helperText: helprtxt,
              helperStyle: const TextStyle(
                color: Colors.white70,
                fontSize: 15,
              ),
              suffixText: 'OK'),
        ),
      ),
    ]);
  }
}
