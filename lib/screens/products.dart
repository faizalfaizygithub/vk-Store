import 'package:flutter/material.dart';
import 'package:vkstore/assets.dart';
import 'package:vkstore/elevatedButon.dart';
import 'package:vkstore/menu.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    Widget space = const SizedBox(
      height: 40,
    );

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        centerTitle: true,
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            highlightColor: Colors.grey,
          ),
        ],
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.green,
        primary: true,
        title: const Text(
          'OUR PRODUCTS..',
          style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontFamily: 'Vk font',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          Menu(
            headLine: 'GROCERY',
            photo: grocerypic,
            buttonAction: () {
              Navigator.of(context).pushNamed('groceryItems');
            },
          ),
          space,
          Menu(
            headLine: 'VEGITABLES',
            photo: vegitablepic,
            buttonAction: () {
              Navigator.of(context).pushNamed('vegitems');
            },
          ),
          space,
          Menu(
            headLine: 'STATIONERY',
            photo: stationrypic,
            buttonAction: () {
              Navigator.of(context).pushNamed('/stationryitems');
            },
          ),
          space,
          Menu(
            headLine: 'BAKES',
            photo: bakerypic,
            buttonAction: () {
              Navigator.of(context).pushNamed('/bakesitems');
            },
          ),
          space,
          Menu(
            headLine: 'ICECREAM',
            photo: icepic,
            buttonAction: () {
              Navigator.of(context).pushNamed('/iceCreamItems');
            },
          ),
          space,
          Menu(
            headLine: 'FRUITES',
            photo: fruitspic,
            buttonAction: () {
              Navigator.of(context).pushNamed('fruitsItems');
            },
          ),
          space,
          Menu(
            headLine: 'HOT & COOL',
            photo: teapic,
            buttonAction: () {
              Navigator.of(context).pushNamed('/hotandCoolItems');
            },
          ),
          space,
          ElevatedButtons(
              buttonAction: () {
                Navigator.of(context).pushNamed('homePage');
              },
              buttonText: 'Back',
              buttonColor: Colors.blueGrey),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
