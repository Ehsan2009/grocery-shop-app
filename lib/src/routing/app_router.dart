import 'package:go_router/go_router.dart';
import 'package:grocery_shop_app/src/features/grocery/presentation/home_page/home_screen.dart';
import 'package:grocery_shop_app/src/features/grocery/presentation/start_page/start_screen.dart';

enum AppRoute {
  start,
  home,
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.start.name,
      builder: (ctx, state) => const StartScreen(),
    ),
    GoRoute(
      path: '/home_screen',
      name: AppRoute.home.name,
      builder: (ctx, state) => const HomeScreen(),
    ),
  ],
);
