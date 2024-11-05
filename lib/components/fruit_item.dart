import 'package:flutter/material.dart';
import 'package:grocery_shop_app/const.dart';
import 'package:grocery_shop_app/models/fruit.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({
    super.key,
    required this.fruit,
  });

  final Fruit fruit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: fruit.backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              fruit.fruitImage,
              width: 100,
            ),
            const SizedBox(height: 10),
            Text(fruit.fruitName),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                fruitManager.addFruit(fruit);
              },
              child: Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                color: fruit.buttonColor,
                child: Text(
                  '\$${fruit.fruitPrice}0',
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
