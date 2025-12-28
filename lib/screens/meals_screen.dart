import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meals_widget.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
  });

  final String? title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    if (title == null) {
      return MealsWidget(meals: meals);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: MealsWidget(meals: meals),
    );
  }
}
