import 'package:grocery_shop_app/models/fruit.dart';

class FruitManager {
  List<Fruit> registeredFruits = [];

  get fruits => registeredFruits;
  
  void addFruit(Fruit fruit) {
    registeredFruits.add(fruit);
  }

  void removeFruit(Fruit fruit) {
    registeredFruits.remove(fruit);
  }
}
