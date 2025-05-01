
import 'package:banha/projects/task1/bmi_calculator/ui/home_screen.dart';
import 'package:banha/projects/task1/calculator/calculator_home_screen.dart';
import 'package:banha/projects/task1/login_screen/home_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;
  List screen = [
    LoginScreen(),
    BMICalculator(),
    Calculator(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate_outlined), label: "Bmi Calculator"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Calculator"),
        ],
      ),
    );
  }
}
