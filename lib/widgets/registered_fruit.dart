import 'package:flutter/material.dart';

import 'package:grocery_shop_app/models/fruit.dart';

class RegisteredFruit extends StatefulWidget {
  const RegisteredFruit({
    super.key,
    required this.fruits,
    required this.onRemoveFruit,
    required this.index,
    required this.fruitImage,
    required this.fruitName,
    required this.fruitPrice,
  });

  final List<Fruit> fruits;
  final void Function(Fruit fruit) onRemoveFruit;
  final int index;
  final String fruitImage;
  final String fruitName;
  final double fruitPrice;

  @override
  State<RegisteredFruit> createState() => _RegisteredFruitState();
}

class _RegisteredFruitState extends State<RegisteredFruit> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              widget.fruitImage,
              width: 50,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.fruitName),
                  Text('\$${widget.fruitPrice}0'),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                widget.onRemoveFruit(
                  widget.fruits[widget.index],
                );
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
