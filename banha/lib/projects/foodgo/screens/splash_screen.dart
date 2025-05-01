import 'package:flutter/material.dart';

class FoodgoSplashScreen extends StatefulWidget {
  const FoodgoSplashScreen({super.key});

  @override
  State<FoodgoSplashScreen> createState() => _FoodgoSplashScreenState();
}

class _FoodgoSplashScreenState extends State<FoodgoSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, 'foodgoLayout');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/foodgo_splash_screen.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
