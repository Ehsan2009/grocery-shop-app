import 'package:flutter/material.dart';

import 'package:grocery_shop_app/models/fruit.dart';

class FruitItem extends StatefulWidget {
  const FruitItem({
    super.key,
    required this.onAddFruit,
    required this.fruitImage,
    required this.fruitName,
    required this.fruitPrice,
    required this.backgroundColor,
    required this.buttonColor,
  });

  final void Function(Fruit fruit) onAddFruit;
  final String fruitImage;
  final String fruitName;
  final double fruitPrice;
  final Color backgroundColor;
  final Color buttonColor;

  @override
  State<FruitItem> createState() => _FruitItemState();
}

class _FruitItemState extends State<FruitItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              widget.fruitImage,
              width: 100,
            ),
            const SizedBox(height: 10),
            Text(widget.fruitName),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                widget.onAddFruit(
                  Fruit(
                    widget.fruitImage,
                    widget.fruitName,
                    widget.fruitPrice,
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                color: widget.buttonColor,
                child: Text(
                  '\$${widget.fruitPrice}0',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
