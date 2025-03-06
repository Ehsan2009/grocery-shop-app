import 'package:grocery_shop_app/src/features/grocery/domain/grocery.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_controller.g.dart';

@riverpod
class CartController extends _$CartController {
  @override
  List<Grocery> build() {
    ref.keepAlive();
    return [];
  }

  void addGrocery(Grocery grocery) {
    if (!state.contains(grocery)) {
      state = [...state, grocery];
    }
  }

  void removeGrocery(Grocery grocery) {
    if (state.contains(grocery)) {
      state = state.where((item) => item != grocery).toList();
    }
  }

  double totalPrice() {
    double sum = 0;

    for (final grocery in state) {
      sum += grocery.price;
    }

    return sum;
  }
}
