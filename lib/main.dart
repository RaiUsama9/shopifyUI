import 'package:flutter/material.dart';
import 'package:shopify/food_purchase.dart';
import 'home_page.dart';
import 'more_info.dart';
import 'food_purchase.dart';

void main() {
  runApp(ShopifyApp());
}

class ShopifyApp extends StatelessWidget {
  const ShopifyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/InfoScreen': (context) => const InfoScreen(),
      },
    );
  }
}
