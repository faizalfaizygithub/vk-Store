import 'package:flutter/material.dart';

import 'package:vkstore/assets.dart';
import 'package:vkstore/elevatedButon.dart';
import 'package:vkstore/productDeatails.dart';

class GroceryItems extends StatelessWidget {
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
            'GROCERY ITEMS',
            style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        bottomNavigationBar:
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Colors.black,
                  size: 25,
                ),
                label: const Text(
                  ' ITEMS ADDED..',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Container(
            height: 45,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.green),
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.forward,
                color: Colors.white,
                size: 25,
              ),
              label: const Text(
                'Next',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ]),
        body: ListView(padding: const EdgeInsets.all(20), children: [
          ProductDeatails(
              heading: ' NORMAL RICE \n 1KG' ' \n' 'Rs:36', avathar: ricepic),
          divider,
          ProductDeatails(
              heading: ' BIRIYANI RICE \n 1KG' ' \n' 'Rs:65', avathar: biripic),
          divider,
          ProductDeatails(
              heading: ' SUGAR \n 1KG' ' \n' 'Rs:40', avathar: sugarpic),
          divider,
          ProductDeatails(
              heading: 'SHARKKARA \n 1KG' ' \n' 'Rs:50', avathar: sharkkarapic),
          divider,
          ProductDeatails(
              heading: ' AVIL \n 1/2KG' ' \n' 'Rs:32', avathar: avilpic),
          divider,
          ProductDeatails(
              heading: ' ATTA \n 1KG' ' \n' 'Rs:44', avathar: attapic),
          divider,
          ProductDeatails(
              heading: ' MAIDA  1KG' ' \n' 'Rs:44', avathar: maidapic),
          divider,
          ProductDeatails(
              heading: ' PALMOIEN\n OIL -1L\nRs:105', avathar: oilpic),
          divider,
          ProductDeatails(
              heading: ' COCNUT OIL \n 1L' ' \n' 'Rs:138', avathar: cocnutpic),
          divider,
          ProductDeatails(
              heading: ' SUNFLOWER \n OIL \n 1L' ' \n' 'Rs:138',
              avathar: sunflowerpic),
          divider,
          ProductDeatails(
              heading: ' SMALL\nJEERAKAM 50g\n' 'Rs:22',
              avathar: smalljeerkampic),
          divider,
          ProductDeatails(
              heading: ' PERUM\nJEERAKAM 50g\nRs:14', avathar: bigjeerakampic),
          divider,
          ProductDeatails(
              heading: ' PARIPP \n 100 GRAM' ' \n' 'Rs:12', avathar: paripppic),
          divider,
          ProductDeatails(
              heading: ' GREENPIECE \n 100GRAM' ' \n' 'Rs:8',
              avathar: kadalapic),
          divider,
          ProductDeatails(
              heading: ' VINEGAR \n 1L' ' \n' 'Rs:17', avathar: surkapic),
          divider,
          ProductDeatails(
              heading: ' CUTEE SOAP \n 1P' ' \n' 'Rs:20', avathar: soappic),
          divider,
          ElevatedButtons(
              buttonAction: () {
                Navigator.of(context).pop('productsScreen');
              },
              buttonText: 'Back',
              buttonColor: Colors.blueGrey),
        ]));
  }
}
