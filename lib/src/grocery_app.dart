import 'package:flutter/material.dart';
import 'package:grocery_shop_app/src/constants/color_scheme.dart';
import 'package:grocery_shop_app/src/routing/app_router.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.primaryContainer,
          surfaceTintColor: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 12),
        ),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData().copyWith(
          backgroundColor: kDarkColorScheme.secondary,
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        cardTheme: const CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(vertical: 12),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}