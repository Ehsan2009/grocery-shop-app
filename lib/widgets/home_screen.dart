import 'package:flutter/material.dart';
import 'package:grocery_shop_app/widgets/expense_management_screen.dart';

import 'package:grocery_shop_app/widgets/fruit_item.dart';
import 'package:grocery_shop_app/models/fruit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Fruit> registeredFruits = [];

  void addFruit(Fruit fruit) {
    setState(() {
      registeredFruits.add(fruit);
    });
  }

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
            Row(
              children: [
                FruitItem(
                  onAddFruit: addFruit,
                  fruitImage: 'lib/images/avocado.png',
                  fruitName: 'Avocado',
                  fruitPrice: 4.00,
                  backgroundColor: Colors.green[300]!,
                  buttonColor: Colors.green[700]!,
                ),
                const SizedBox(width: 20),
                FruitItem(
                  onAddFruit: addFruit,
                  fruitImage: 'lib/images/banana.png',
                  fruitName: 'Banana',
                  fruitPrice: 2.50,
                  backgroundColor: Colors.orange[300]!,
                  buttonColor: Colors.orange[700]!,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                FruitItem(
                  onAddFruit: addFruit,
                  fruitImage: 'lib/images/chicken.png',
                  fruitName: 'Chicken',
                  fruitPrice: 12.80,
                  backgroundColor: Colors.brown[300]!,
                  buttonColor: Colors.brown[700]!,
                ),
                const SizedBox(width: 20),
                FruitItem(
                  onAddFruit: addFruit,
                  fruitImage: 'lib/images/water.png',
                  fruitName: 'Water',
                  fruitPrice: 1.00,
                  backgroundColor: Colors.blue[300]!,
                  buttonColor: Colors.blue[700]!,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExpenseManagementScreen(
                fruits: registeredFruits,
              ),
            ),
          );
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.black,
        child: const Icon(Icons.shopping_bag, color: Colors.white),
      ),
    );
  }
}
