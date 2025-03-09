import 'package:go_router/go_router.dart';
import 'package:grocery_shop_app/src/features/cart/presentation/cart_screen.dart';
import 'package:grocery_shop_app/src/features/grocery/presentation/home_page/home_screen.dart';
import 'package:grocery_shop_app/src/features/grocery/presentation/start_page/start_screen.dart';

enum AppRoute {
  start,
  home,
  cart,
}

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.start.name,
      builder: (ctx, state) => const StartScreen(),
    ),
    GoRoute(
      path: '/home',
      name: AppRoute.home.name,
      builder: (ctx, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'cart',
          name: AppRoute.cart.name,
          builder: (context, state) => const CartScreen(),
        ),
      ],
    ),
  ],
);
