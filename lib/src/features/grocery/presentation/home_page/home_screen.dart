import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grocery_shop_app/src/features/grocery/presentation/home_page/home_grocery_tile.dart';
import 'package:grocery_shop_app/src/constants/dummy_groceries.dart';
import 'package:grocery_shop_app/src/routing/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                itemCount: dummyGroceries.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 8 / 10,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (ctx, index) {
                  return HomeGroceryTile(
                    grocery: dummyGroceries[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(AppRoute.cart.name);
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
