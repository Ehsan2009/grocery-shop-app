import 'package:flutter/material.dart';
import 'package:grocery_shop_app/src/features/cart/presentation/cart_grocery_tile.dart';
import 'package:grocery_shop_app/src/features/grocery/domain/grocery.dart';

class CartGroceryList extends StatelessWidget {
  const CartGroceryList({
    super.key,
    required this.groceries,
  });

  final List<Grocery> groceries;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceries.length,
      itemBuilder: (ctx, index) => CartGroceryTile(
        grocery: groceries[index],
      ),
    );
  }
}
