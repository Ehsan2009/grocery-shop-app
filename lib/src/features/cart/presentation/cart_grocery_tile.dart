import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grocery_shop_app/src/features/grocery/domain/grocery.dart';
import 'package:grocery_shop_app/src/shared/cart_controller.dart';

class CartGroceryTile extends ConsumerWidget {
  const CartGroceryTile({
    super.key,
    required this.grocery,
  });

  final Grocery grocery;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              grocery.image,
              width: 50,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(grocery.name),
                  Text('\$${grocery.price}0'),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                ref
                    .read(cartControllerProvider.notifier)
                    .removeGrocery(grocery);
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
