import 'package:grocery_shop_app/models/fruit.dart';

class AllExpenses {
  const AllExpenses(this.fruits);

  final List<Fruit> fruits;

  double get totalPrice {
    double sum = 0;

    for (final fruit in fruits) {
      sum += fruit.fruitPrice;
    }

    return sum;
  }
}