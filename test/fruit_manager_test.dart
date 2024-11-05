import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grocery_shop_app/models/fruit.dart';
import 'package:grocery_shop_app/models/fruit_manager.dart';

void main() {
  late FruitManager fruitManager;
  late Fruit fruit;

  setUp(() {
    fruitManager = FruitManager();
    fruit = Fruit(
      fruitImage: 'assets/images/water.png',
      fruitName: 'Water',
      fruitPrice: 1.00,
      backgroundColor: Colors.blue[300]!,
      buttonColor: Colors.blue[700]!,
    );
  });

  group('testing fruit manager functionality', () {
    test(
      'given the fruit manager class when initialized then the fruits list should be empty',
      () {
        // Act
        final fruits = fruitManager.fruits;

        // Assert
        expect(fruits, isEmpty);
      },
    );

    test(
      'given the fruit manager class when calling add fruit method then it should be added to fruits list',
      () {
        // Act
        fruitManager.addFruit(fruit);
        List<Fruit> fruits = fruitManager.fruits;

        // Assert
        expect(fruits, contains(fruit));
      },
    );

    test(
      'given the fruit manager class when calling remove fruit method then the fruit should be removed from fruits list',
      () {
        // Act
        fruitManager.addFruit(fruit);
        fruitManager.removeFruit(fruit);
        List<Fruit> fruits = fruitManager.fruits;

        // Assert
        expect(fruits, isNot(contains(fruit)));
      },
    );
  });
}
