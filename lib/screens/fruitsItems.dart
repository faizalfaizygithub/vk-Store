import 'package:flutter/material.dart';
import 'package:vkstore/assets.dart';
import 'package:vkstore/elevatedButon.dart';
import 'package:vkstore/productDeatails.dart';
import 'package:vkstore/screens/groceryItems.dart';

class FruitsItems extends StatelessWidget {
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
          'FRUITS',
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
            heading: 'APPLE' '\n' '1KG' '\n' 'Rs:100', avathar: applepic),
        divider,
        ProductDeatails(heading: ' MUSAMBI' ' \n' 'Rs:90', avathar: musambipic),
        divider,
        ProductDeatails(
            heading: 'GREEN GRAPE' ' \n' 'Rs:60', avathar: greengrapepic),
        divider,
        ProductDeatails(
            heading: 'BLACK GRAPE' ' \n' 'Rs:50', avathar: blackgrapepic),
        divider,
        ProductDeatails(heading: 'MANGO' '\n' 'Rs:70', avathar: mangopic),
        divider,
        ProductDeatails(heading: 'PINAPPLE' '\n' 'Rs:75', avathar: pinapplepic),
        divider,
        ProductDeatails(
            heading: 'BIG BANANA' '\n' 'Rs:44', avathar: bigbananapic),
        divider,
        ProductDeatails(
            heading: 'SMALL \nBANANA' '\n' 'Rs:24', avathar: smallbananapic),
        divider,
        ProductDeatails(heading: 'SHAMAM' '\n' 'Rs:40', avathar: shamampic),
        divider,
        ProductDeatails(
            heading: 'WATERMELON' '\n' 'Rs:20', avathar: watermelonpic),
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
