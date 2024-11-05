import 'package:flutter/material.dart';

class Fruit {
  const Fruit({
    required this.fruitImage,
    required this.fruitName,
    required this.fruitPrice,
    required this.backgroundColor,
    required this.buttonColor,
  });

  final String fruitImage;
  final String fruitName;
  final double fruitPrice;
  final Color backgroundColor;
  final Color buttonColor;
}
