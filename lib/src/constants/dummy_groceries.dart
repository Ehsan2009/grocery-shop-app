import 'package:flutter/material.dart';
import 'package:grocery_shop_app/src/features/grocery/domain/grocery.dart';

final dummyGroceries = [
  Grocery(
    image: 'assets/images/avocado.png',
    name: 'Avocado',
    price: 4.00,
    backgroundColor: Colors.green[300]!,
    buttonColor: Colors.green[700]!,
  ),
  Grocery(
    image: 'assets/images/banana.png',
    name: 'Banana',
    price: 2.50,
    backgroundColor: Colors.orange[300]!,
    buttonColor: Colors.orange[700]!,
  ),
  Grocery(
    image: 'assets/images/chicken.png',
    name: 'Chicken',
    price: 12.80,
    backgroundColor: Colors.brown[300]!,
    buttonColor: Colors.brown[700]!,
  ),
  Grocery(
    image: 'assets/images/water.png',
    name: 'Water',
    price: 1.00,
    backgroundColor: Colors.blue[300]!,
    buttonColor: Colors.blue[700]!,
  ),
];
