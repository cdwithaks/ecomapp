// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:ecomapp/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Product1",
      price: 99.99,
      description: "product description",
      imagepath: 'assets/image1.png',
    ),
    Product(
      name: "Product2",
      price: 95.99,
      description: "product description",
      imagepath: 'assets/image2.jpeg',
    ),
    Product(
      name: "Product3",
      price: 91.99,
      description: "product description",
      imagepath: 'assets/image3.jpeg',
    ),
    Product(
      name: "Product4",
      price: 96.99,
      description: "product description",
      imagepath: 'assets/image4.png',
    ),
  ];
  List<Product> _cart = [];
  List<Product> get shop => _shop;

  List<Product> get cart => _cart;
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
