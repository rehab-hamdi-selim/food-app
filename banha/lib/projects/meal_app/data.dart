

import 'package:banha/projects/meal_app/models/category.dart';
import 'package:banha/projects/meal_app/models/meal.dart';

final List<CategoryModel> allCategoryModel = [
  CategoryModel(id: 'c1', title: 'Chinese', image: 'assets/images/chinese.jpg'),
  CategoryModel(id: 'c2', title: 'Indian', image: 'assets/images/indian.jpg'),
  CategoryModel(
      id: 'c3', title: 'Oriental Meals', image: 'assets/images/oriental.jpg'),
  CategoryModel(id: 'c4', title: 'Pasta', image: 'assets/images/pasta.jpg'),
  CategoryModel(id: 'c5', title: 'Sandwich', image: 'assets/images/sand.jpg'),
  CategoryModel(id: 'c6', title: 'Salads', image: 'assets/images/salad.jpg'),
  CategoryModel(
      id: 'c7', title: 'Rice Dishes', image: 'assets/images/Rice.jpg'),
  CategoryModel(
      id: 'c8', title: 'Desserts', image: 'assets/images/dessert.jpg'),
];

List<MealModel> dummyMeals = [
  MealModel(
      id: "m1",
      title: "LAMP CHOPS",
      imageUrl: "assets/images/lampchops.jpg",
      salary: 150,
      time: "35",
      description:
      "Fillet Steak round 275gm, topped with brown pepper sauce served with your choice of two sides.",
      categoryNumber: "c3"),
  MealModel(
      id: "m2",
      title: "BUTTER CHICKEN",
      imageUrl: "assets/images/butterchicken.jpg",
      salary: 90,
      time: "25",
      description:
      "Creamy and rich butter chicken served with freshly baked naan or steamed rice.",
      categoryNumber: "c2"),
  MealModel(
      id: "m3",
      title: "ALFREDO",
      imageUrl: "assets/images/alfredo.jpg",
      salary: 60,
      time: "25",
      description:
      "Delicious Alfredo pasta made with creamy Parmesan sauce and your choice of protein.",
      categoryNumber: "c4"),
  MealModel(
      id: "m4",
      title: "STEAK",
      imageUrl: "assets/images/steak.jpg",
      salary: 150,
      time: "30",
      description:
      "Juicy and tender steak cooked to perfection, served with mashed potatoes and grilled vegetables.",
      categoryNumber: "c3"),
  MealModel(
      id: "m5",
      title: "SMOKED CHEESY",
      imageUrl: "assets/images/smoked_cheesy.jpg",
      salary: 90,
      time: "25",
      description:
      "Smoky and cheesy delight made with layers of melted cheese and your favorite toppings.",
      categoryNumber: "c7"),
  MealModel(
      id: "m6",
      title: "LAMP BIRYANI",
      imageUrl: "assets/images/lamp_biryani.jpg",
      salary: 90,
      time: "30",
      description:
      "Aromatic rice cooked with tender lamb, spices, and garnished with fried onions and coriander.",
      categoryNumber: "c2"),
  MealModel(
      id: "m7",
      title: "SHISH TAWOOK RICE",
      imageUrl: "assets/images/shish_Tawook.jpg",
      salary: 99,
      time: "30",
      description:
      "Grilled chicken skewers served over a bed of flavored rice with garlic sauce on the side.",
      categoryNumber: "c7"),
  MealModel(
      id: "m8",
      title: "LAMP SHANK",
      imageUrl: "assets/images/lamp_shank.jpg",
      salary: 130,
      time: "35",
      description:
      "Tender lamb shank slow-cooked to perfection in a rich sauce, served with mashed potatoes.",
      categoryNumber: "c3"),
];

