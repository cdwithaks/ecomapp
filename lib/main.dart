// ignore_for_file: prefer_const_constructors

import 'package:ecomapp/models/shop.dart';
import 'package:ecomapp/pages/cart_page.dart';
import 'package:ecomapp/pages/intropage.dart';
import 'package:ecomapp/pages/shoe_page.dart';
import 'package:ecomapp/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Shop(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Intropage(),
      theme: lightMode,
      routes: {
        '/intropage': (context) => const Intropage(),
        '/shoe_page': (context) => const Shoepage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
