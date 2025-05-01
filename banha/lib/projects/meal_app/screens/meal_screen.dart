
import 'package:banha/projects/meal_app/data.dart';
import 'package:banha/projects/meal_app/models/meal.dart';
import 'package:banha/projects/meal_app/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? data =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    late String id;
    late String title;

    if (data.isNotEmpty) {
      id = data['categoryId'];
      title = data['categoryTitle'];
    } else {
      id = 'c1';
      title = 'No Data available';
    }

    List<MealModel> filteredMeals = dummyMeals.where((i) {
      return i.categoryNumber.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (c, index) => MealItem(
          mealModel: filteredMeals[index],
        ),
        itemCount: filteredMeals.length,
      ),
    );
  }
}
