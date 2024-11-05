import 'package:flutter/material.dart';
import 'package:grocery_shop_app/const.dart';
import 'package:grocery_shop_app/models/all_expenses.dart';
import 'package:grocery_shop_app/components/registered_fruit.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Text('Cart is empty..');

    if (fruitManager.fruits.isNotEmpty) {
      mainContent = ListView.builder(
        itemCount: fruitManager.fruits.length,
        itemBuilder: (ctx, index) => RegisteredFruit(
          fruit: fruitManager.fruits[index],
          onRemove: () {
            setState(() {
              fruitManager.removeFruit(fruitManager.fruits[index]);
            });
          },
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
                          '\$${AllExpenses(fruitManager.fruits).totalPrice}0',
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
