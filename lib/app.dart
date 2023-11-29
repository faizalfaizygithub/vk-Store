import 'package:flutter/material.dart';
import 'package:vkstore/screens/bakesItems.dart';
import 'package:vkstore/screens/fruitsItems.dart';
import 'package:vkstore/screens/groceryItems.dart';
import 'package:vkstore/screens/homePage.dart';
import 'package:vkstore/screens/hotandCool.dart';
import 'package:vkstore/screens/icecream.dart';
import 'package:vkstore/screens/login.dart';
import 'package:vkstore/screens/products.dart';
import 'package:vkstore/screens/signup.dart';
import 'package:vkstore/screens/stationryitems.dart';
import 'package:vkstore/screens/vegitems.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'homePage': (BuildContext ctx) => const HomePage(),
        'loginpage': (BuildContext ctx) => const LoginPage(),
        '/signupPage': (BuildContext ctx) => const SignUpPage(),
        'productsScreen': (BuildContext ctx) => const Products(),
        'groceryItems': (BuildContext ctx) => GroceryItems(),
        'vegitems': (BuildContext ctx) => const VegItems(),
        '/stationryitems': (BuildContext ctx) => StationryItems(),
        '/bakesitems': (BuildContext ctx) => BakesItems(),
        '/iceCreamItems': (BuildContext ctx) => IceItems(),
        'fruitsItems': (BuildContext ctx) => FruitsItems(),
        '/hotandCoolItems': (BuildContext ctx) => HotandCool()
      },
      initialRoute: 'homePage',
    );
  }
}
