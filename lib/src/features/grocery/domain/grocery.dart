import 'package:flutter/material.dart';

class Grocery {
  const Grocery({
    required this.image,
    required this.name,
    required this.price,
    required this.backgroundColor,
    required this.buttonColor,
  });

  final String image;
  final String name;
  final double price;
  final Color backgroundColor;
  final Color buttonColor;
}
