import 'package:flutter/material.dart';
import 'package:mealapp/screens/home.dart';
import 'package:mealapp/routes.dart';
import 'package:mealapp/screens/meaal.dart';
import 'package:mealapp/favorites.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      routes: {
        Approutes.mealscreen: (context) => Meaal(),
        '/favorites': (context) => FavoriteScreen(),
      },
      home: const HomeScreen(),
    );
  }
}
