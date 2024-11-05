import 'package:go_router/go_router.dart';
import 'package:grocery_shop_app/screens/home_screen.dart';
import 'package:grocery_shop_app/screens/start_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (ctx, state) => const StartScreen(),
    ),
    GoRoute(
      path: '/home_screen',
      builder: (ctx, state) => const HomeScreen(),
    ),
  ],
);
