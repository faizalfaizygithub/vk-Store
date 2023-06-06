import 'package:flutter/material.dart';
import 'package:vkstore/productDeatails.dart';
import 'package:vkstore/assets.dart';

import '../elevatedButon.dart';

class HotandCool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget divider = const Divider(
      thickness: 5,
      color: Colors.grey,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 2,
        title: const Text(
          'HOT and COOL',
          style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        ProductDeatails(heading: 'MILK TEA' '\n' 'Rs:10', avathar: milkteapic),
        divider,
        ProductDeatails(
            heading: ' BLACK TEA' ' \n' 'Rs:8', avathar: blackteapic),
        divider,
        ProductDeatails(
            heading: 'HORLICKS ' ' \n' 'Rs:20', avathar: horlickspic),
        divider,
        ProductDeatails(heading: '7UP' ' \n' 'Rs:40', avathar: sevenuppic),
        divider,
        ProductDeatails(heading: 'PEPSI' '\n' 'Rs:40', avathar: pepsipic),
        divider,
        ProductDeatails(
            heading: 'MANGO JUICE' '\n' 'Rs:10', avathar: mangojuicepic),
        divider,
        ProductDeatails(heading: 'SOFT DRINKS' '\n' 'Rs:10', avathar: sodapic),
        divider,
        ElevatedButtons(
            buttonAction: () {
              Navigator.of(context).pop('productsScreen');
            },
            buttonText: 'Back',
            buttonColor: Colors.blueGrey),
      ]),
    );
  }
}
