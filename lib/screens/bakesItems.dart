import 'package:flutter/material.dart';
import 'package:vkstore/assets.dart';
import 'package:vkstore/productDeatails.dart';
import 'package:vkstore/screens/groceryItems.dart';

import '../elevatedButon.dart';

class BakesItems extends StatelessWidget {
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
          'BAKES ',
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
            heading: ' BANANA\n' 'CHIPS' '\n' '100g' ':' 'Rs:24',
            avathar: chipspic),
        divider,
        ProductDeatails(
            heading: ' MIXTURE' ' \n' '100g' 'Rs:16', avathar: mixturepic),
        divider,
        ProductDeatails(heading: ' BREAD' ' \n' 'Rs:35', avathar: breadpic),
        divider,
        ProductDeatails(heading: 'BUN' ' \n' 'Rs:10', avathar: bunpic),
        divider,
        ProductDeatails(
            heading: ' ROUND\n BISCUITS' '\n' 'Rs:32',
            avathar: roundbiscuitpic),
        divider,
        ProductDeatails(heading: ' RUSK' '\n' 'Rs:20', avathar: ruskpic),
        divider,
        ProductDeatails(
            heading: 'MAYSOR PACK' '\n' 'Rs:32', avathar: maysorepic),
        divider,
        ProductDeatails(heading: ' OREO' '\n' 'Rs:10', avathar: oreopic),
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
