
import 'package:banha/projects/foodgo/screens/favoriate.dart';
import 'package:banha/projects/foodgo/screens/home_screen.dart';
import 'package:banha/projects/foodgo/screens/orders.dart';
import 'package:banha/projects/foodgo/screens/settings.dart';
import 'package:flutter/material.dart';

class FoodgoHomeLayoutLayout extends StatefulWidget {
  const FoodgoHomeLayoutLayout({super.key});

  @override
  State<FoodgoHomeLayoutLayout> createState() => _FoodgoHomeLayoutLayoutState();
}

class _FoodgoHomeLayoutLayoutState extends State<FoodgoHomeLayoutLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    const FoodgoHomeScreen(),
    const FavoriteScreen(),
    const OrdersScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xffEF2A39),
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
