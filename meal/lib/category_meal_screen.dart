import 'package:flutter/material.dart';
import 'package:meal/dummy_data.dart';
import 'package:meal/meal_item.dart';
import 'package:meal/models/category.dart';

import 'models/meal.dart';

class CategoryMealScreen extends StatelessWidget {
  // String CategoryTitle;
  // String CategoryId;

  // CategoryMealScreen(this.CategoryId, this.CategoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final CategoryTitle = routeArgs['title'];
    final CategoryId = routeArgs['id'];
    final List<Meal> categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(CategoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(CategoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
