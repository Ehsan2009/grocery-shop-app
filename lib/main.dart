import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grocery_shop_app/src/grocery_app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: GroceryApp(),
    ),
  );
}
