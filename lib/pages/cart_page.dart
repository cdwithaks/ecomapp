// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:ecomapp/components/my_button.dart';
import 'package:ecomapp/components/my_drawer.dart';
import 'package:ecomapp/models/product.dart';
import 'package:ecomapp/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removedItemFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("remove  this item to your cart"),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("cancel"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<Shop>().removeFromCart(product);
            },
            child: Text("yes"),
          ),
        ],
      ),
    );
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content: Text("user want to pay connect to backend "),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page "),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Expanded(
              child: cart.isEmpty
                  ? Center(child: Text("YOUR CARD IS EMPTY "))
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        final item = cart[index];
                        return ListTile(
                          title: Text(item.name),
                          subtitle: Text(item.price.toStringAsFixed(2)),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () => removedItemFromCart(context, item),
                          ),
                        );
                      })),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
              onTap: () => payButtonPressed(context),
              child: Text("pay now"),
            ),
          )
        ],
      ),
    );
  }
}
