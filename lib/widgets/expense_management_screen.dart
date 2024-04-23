import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:grocery_shop_app/models/fruit.dart';
import 'package:grocery_shop_app/widgets/registered_fruit.dart';

class ExpenseManagementScreen extends StatefulWidget {
  const ExpenseManagementScreen({
    super.key,
    required this.fruits,
  });

  final List<Fruit> fruits;

  @override
  State<ExpenseManagementScreen> createState() =>
      _ExpenseManagementScreenState();
}

class _ExpenseManagementScreenState extends State<ExpenseManagementScreen> {
  void removeFruit(Fruit fruit) {
    setState(() {
      widget.fruits.remove(fruit);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Text('Cart is empty..');

    if (widget.fruits.isNotEmpty) {
      mainContent = ListView.builder(
        itemCount: widget.fruits.length,
        itemBuilder: (ctx, index) => RegisteredFruit(
          fruits: widget.fruits,
          onRemoveFruit: removeFruit,
          index: index,
          fruitImage: widget.fruits[index].fruitImage,
          fruitName: widget.fruits[index].fruitName,
          fruitPrice: widget.fruits[index].fruitPrice,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cart',
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: mainContent,
            ),
            Container(
              width: 380,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Total Price',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '\$${AllExpenses(widget.fruits).totalPrice}0',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pay Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
