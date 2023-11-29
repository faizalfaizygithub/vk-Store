import 'package:flutter/material.dart';
import 'package:vkstore/assets.dart';
import 'package:vkstore/productDeatails.dart';
import 'package:vkstore/screens/groceryItems.dart';

import '../elevatedButon.dart';

class IceItems extends StatelessWidget {
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
          'ICE CREAMS',
          style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      bottomNavigationBar: SelectedItems(),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        ProductDeatails(heading: ' BALL' '\n' 'Rs:10', avathar: ballpic),
        divider,
        ProductDeatails(
            heading: ' CHOCOBAR' ' \n' 'Rs:10', avathar: chochobarpic),
        divider,
        ProductDeatails(heading: ' CONE ICE' ' \n' 'Rs:15', avathar: conepic),
        divider,
        ProductDeatails(heading: 'CUP' ' \n' 'Rs:5', avathar: cuppic),
        divider,
        ProductDeatails(
            heading: ' SWEETYCONE' '\n' 'Rs:26', avathar: iceconepic),
        divider,
        ProductDeatails(heading: 'SIPUPS' '\n' 'Rs:5', avathar: sipuppic),
        divider,
        ElevatedButtons(
          buttonAction: () {
            Navigator.of(context).pop('productsScreen');
          },
          buttonText: 'Back',
          buttonColor: Colors.purple,
          txtColor: Colors.white,
        ),
      ]),
    );
  }
}
