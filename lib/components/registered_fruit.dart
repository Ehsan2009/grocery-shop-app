import 'package:flutter/material.dart';
import 'package:grocery_shop_app/models/fruit.dart';

class RegisteredFruit extends StatelessWidget {
  const RegisteredFruit({
    super.key,
    required this.fruit,
    required this.onRemove,
  });

  final Fruit fruit;
  final void Function() onRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              fruit.fruitImage,
              width: 50,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(fruit.fruitName),
                  Text('\$${fruit.fruitPrice}0'),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: onRemove,
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
