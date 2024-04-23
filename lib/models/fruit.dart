class Fruit {
  const Fruit(this.fruitImage, this.fruitName, this.fruitPrice);

  final String fruitImage;
  final String fruitName;
  final double fruitPrice;
}

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