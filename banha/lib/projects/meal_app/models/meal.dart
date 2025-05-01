class MealModel {
  final String id;
  final String title;
  final String imageUrl;
  final double salary;
  final String time;
  final String description;
  final String categoryNumber;
  // we need this because in data each meal have category name
  // based on the category name we can filter the meals

  MealModel(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.salary,
      required this.time,
      required this.description,
      required this.categoryNumber});
}
