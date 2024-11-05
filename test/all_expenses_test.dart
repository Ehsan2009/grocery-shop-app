import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grocery_shop_app/models/all_expenses.dart';
import 'package:grocery_shop_app/models/fruit.dart';

void main() {
  group('testing all expenses class functionality', () {
    test(
      'given the all expenses class when we have an empty list then the total price should be 0',
      () {
        // Arrange
        final List<Fruit> fruits = [];
        final allExpenses = AllExpenses(fruits);

        // Act
        final double totalPrice = allExpenses.totalPrice;

        // Assert
        expect(totalPrice, equals(0));
      },
    );

    test(
      'given the all expenses class when we have multiple fruits then the total price should be the sum of those fruits',
      () {
        // Arrange
        final List<Fruit> fruits = [
          Fruit(
            fruitImage: 'assets/images/chicken.png',
            fruitName: 'Chicken',
            fruitPrice: 12.80,
            backgroundColor: Colors.brown[300]!,
            buttonColor: Colors.brown[700]!,
          ),
          Fruit(
            fruitImage: 'assets/images/water.png',
            fruitName: 'Water',
            fruitPrice: 1.00,
            backgroundColor: Colors.blue[300]!,
            buttonColor: Colors.blue[700]!,
          ),
        ];
        final allExpenses = AllExpenses(fruits);

        // Act
        final double totalPrice = allExpenses.totalPrice;

        // Assert
        expect(totalPrice, equals(13.80));
      },
    );
  });
}
