
import 'package:banha/projects/meal_app/data.dart';
import 'package:banha/projects/meal_app/widgets/category_item.dart';
import 'package:flutter/material.dart';

class MealAppHomeScreen extends StatelessWidget {
  const MealAppHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Meal App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => CategoryItem(
          categoryModel: allCategoryModel[index],
        ),
        itemCount: allCategoryModel.length,
      ),
    );
  }
}
