import 'package:banha/projects/foodgo/layout/foodgo_layout.dart';
import 'package:banha/projects/foodgo/screens/splash_screen.dart';
import 'package:banha/projects/meal_app/screens/meal_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'mealScreen': (_) => MealScreen(),
        'foodgoLayout': (_) => FoodgoHomeLayoutLayout(),
      },
      debugShowCheckedModeBanner: false, // Remove this line to hide Flutter's debug mode banner.'
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:FoodgoSplashScreen(),
    );
  }
}

