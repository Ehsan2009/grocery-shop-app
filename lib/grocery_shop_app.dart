import 'package:flutter/material.dart';
import 'package:grocery_shop_app/widgets/home_screen.dart';

import 'package:grocery_shop_app/widgets/start_screen.dart';

class GroceryShopApp extends StatefulWidget {
  const GroceryShopApp({super.key});

  @override
  State<GroceryShopApp> createState() => _GroceryShopAppState();
}

class _GroceryShopAppState extends State<GroceryShopApp> {
  var screen = 'start_screen';

  void switchScreen() {
    setState(() {
      screen = 'home_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(switchScreen);

    final kColorScheme = ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 241, 233, 233),
    );

    final kDarkColorScheme = ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(255, 36, 36, 56),
    );

    if (screen == 'home_screen') {
      activeScreen = const HomeScreen();
    }

    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.primaryContainer,
          surfaceTintColor: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 12),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
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
      home: activeScreen,
    );
  }
}
