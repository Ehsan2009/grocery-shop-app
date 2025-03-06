import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grocery_shop_app/src/shared/cart_controller.dart';
import 'package:grocery_shop_app/src/features/grocery/domain/grocery.dart';

class HomeGroceryTile extends ConsumerWidget {
  const HomeGroceryTile({
    super.key,
    required this.grocery,
  });

  final Grocery grocery;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 175,
      height: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: grocery.backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              grocery.image,
              width: 100,
            ),
            const SizedBox(height: 10),
            Text(grocery.name),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                ref.read(cartControllerProvider.notifier).addGrocery(grocery);
              },
              child: Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                color: grocery.buttonColor,
                child: Text(
                  '\$${grocery.price}0',
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
