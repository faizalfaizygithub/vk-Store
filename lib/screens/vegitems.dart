import 'package:flutter/material.dart';
import 'package:vkstore/assets.dart';
import 'package:vkstore/elevatedButon.dart';
import 'package:vkstore/productDeatails.dart';
import 'package:vkstore/screens/groceryItems.dart';

class VegItems extends StatelessWidget {
  const VegItems({super.key});

  @override
  Widget build(BuildContext context) {
    Widget divider = const Divider(
      thickness: 4,
      color: Colors.grey,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'VEGITABLES ',
          style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      bottomNavigationBar: SelectedItems(),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        ProductDeatails(
            heading: ' TOMATO \n 1KG' ' \n' 'Rs:20', avathar: tomatopic),
        divider,
        ProductDeatails(
            heading: ' BIG ONION \n 1KG' ' \n' 'Rs:22', avathar: bigonionpic),
        divider,
        ProductDeatails(
            heading: ' SMALL ONION \n 1KG' ' \n' 'Rs:54',
            avathar: smallonionpic),
        divider,
        ProductDeatails(
            heading: 'WHITE ONION \n 100g' ' \n' 'Rs:12',
            avathar: whiteonionpic),
        divider,
        ProductDeatails(
            heading: ' POTATO \n 1KG' ' \n' 'Rs:32', avathar: potatopic),
        divider,
        ProductDeatails(
            heading: ' CARROT \n 1KG' ' \n' 'Rs:50', avathar: carrotpic),
        divider,
        ProductDeatails(
            heading: ' CABBAGE  1KG' ' \n' 'Rs:44', avathar: cabbagepic),
        divider,
        ProductDeatails(
            heading: ' GREENCHILLY \n 1KG Rs:60', avathar: greenchillypic),
        divider,
        ProductDeatails(heading: ' VELLARI 1KG \n Rs:36', avathar: vellaripic),
        divider,
        ElevatedButtons(
            txtColor: Colors.white,
            buttonAction: () {
              Navigator.of(context).pop('productsScreen');
            },
            buttonText: 'Back',
            buttonColor: Colors.purple),
      ]),
    );
  }
}
