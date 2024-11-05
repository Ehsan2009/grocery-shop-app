import 'package:flutter/material.dart';
import 'package:grocery_shop_app/components/fruit_item.dart';
import 'package:grocery_shop_app/data/dummy_fruits.dart';
import 'package:grocery_shop_app/screens/checkout_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 10,
          top: 65,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good morning,',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Let\'s order fresh items for you',
              style: TextStyle(
                fontSize: 45,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 30),
            Text(
              'Fresh Items',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: dummyFruits.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 8 / 10,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (ctx, index) {
                  return FruitItem(
                    fruit: dummyFruits[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CheckoutScreen(),
            ),
          );
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
    );
  }
}
