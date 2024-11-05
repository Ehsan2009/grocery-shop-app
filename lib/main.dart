import 'package:flutter/material.dart';
import 'package:grocery_shop_app/config/app_router.dart';

final kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 241, 233, 233),
);

final kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 36, 36, 56),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
