import 'package:flutter/material.dart';
import 'package:grocery_shop_app/models/fruit.dart';

final dummyFruits = [
  Fruit(
    fruitImage: 'assets/images/avocado.png',
    fruitName: 'Avocado',
    fruitPrice: 4.00,
    backgroundColor: Colors.green[300]!,
    buttonColor: Colors.green[700]!,
  ),
  Fruit(
    fruitImage: 'assets/images/banana.png',
    fruitName: 'Banana',
    fruitPrice: 2.50,
    backgroundColor: Colors.orange[300]!,
    buttonColor: Colors.orange[700]!,
  ),
  Fruit(
    fruitImage: 'assets/images/chicken.png',
    fruitName: 'Chicken',
    fruitPrice: 12.80,
    backgroundColor: Colors.brown[300]!,
    buttonColor: Colors.brown[700]!,
  ),
  Fruit(
    fruitImage: 'assets/images/water.png',
    fruitName: 'Water',
    fruitPrice: 1.00,
    backgroundColor: Colors.blue[300]!,
    buttonColor: Colors.blue[700]!,
  ),
];
