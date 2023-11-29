import 'package:flutter/material.dart';
import 'package:vkstore/assets.dart';
import 'package:vkstore/productDeatails.dart';
import 'package:vkstore/screens/groceryItems.dart';

import '../elevatedButon.dart';

class StationryItems extends StatelessWidget {
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
          'STATIONERY ',
          style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      bottomNavigationBar: SelectedItems(),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        ProductDeatails(heading: ' NOTEBOOK \n' 'Rs:20', avathar: notepic),
        divider,
        ProductDeatails(heading: ' PEN' ' \n' 'Rs:5', avathar: penpic),
        divider,
        ProductDeatails(heading: ' PENCIL' ' \n' 'Rs:4', avathar: pencilpic),
        divider,
        ProductDeatails(
            heading: 'ERAISER\nCUTTER' ' \n' 'Rs:10', avathar: eraiserpic),
        divider,
        ProductDeatails(
            heading: ' BLACK BOARD' '\n' 'Rs:32', avathar: blackboardpic),
        divider,
        ElevatedButtons(
          txtColor: Colors.white,
          buttonAction: () {
            Navigator.of(context).pop('productsScreen');
          },
          buttonText: 'Back',
          buttonColor: Colors.purple,
        ),
      ]),
    );
  }
}
