// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:ecomapp/components/my_button.dart';
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            children: [
              Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Minimal Shop",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "premium quality items ",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: () => Navigator.pushNamed(context, '/shoe_page'),
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ));
  }
}
