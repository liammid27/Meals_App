import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meals_widget.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
    required this.onToggleFavorite,
  });

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    if (title == null) {
      return MealsWidget(meals: meals, onToggleFavorite: onToggleFavorite);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: MealsWidget(meals: meals, onToggleFavorite: onToggleFavorite),
    );
  }
}
