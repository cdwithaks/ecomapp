// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:ecomapp/components/my_drawer.dart';
import 'package:ecomapp/components/my_product_tile.dart';
import 'package:ecomapp/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shoepage extends StatelessWidget {
  const Shoepage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("shoe page "),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: Icon(Icons.shopping_bag_outlined))
        ],
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const SizedBox(height: 25),
          Center(
            child: Text(
              " pick from selected list of premium product",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                final product = products[index];
                return MyProductTile(product: product);
              },
            ),
          )
        ],
      ),
    );
  }
}
