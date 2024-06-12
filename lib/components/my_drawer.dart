// ignore_for_file: deprecated_member_use, prefer_const_constructors, non_constant_identifier_names

import 'package:ecomapp/components/my_List_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Mylisttile(
                text: "shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),
              Mylisttile(
                text: "cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Mylisttile(
              text: "exit",
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/intropage', (route) => false),
            ),
          ),
        ],
      ),
    );
  }
}
