import 'package:deli_meals/dummy_data.dart';
import 'package:deli_meals/widget/meal_item.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryTitle = routArgs['title'];
    final categoryId = routArgs['id'];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
