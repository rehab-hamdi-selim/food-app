
import 'package:banha/projects/meal_app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'mealScreen', arguments: {
              'categoryId':categoryModel.id,
              'categoryTitle': categoryModel.title,
            });
          },
          child: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(categoryModel.image),
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              color: Colors.black54,
              width: double.infinity,
              height: 50,
              child: Text(
                categoryModel.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
