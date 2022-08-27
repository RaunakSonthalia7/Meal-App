import 'package:flutter/material.dart';
import 'package:meal/categories_screen.dart';
import 'package:meal/category_meal_screen.dart';
import 'package:meal/meal_detail_screen.dart';
import 'package:meal/tabs_screen.dart';

import 'filter_screen.dart';

void main() {
  runApp(MealApp());
}

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DelimEal',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.amber,
      ),
      //home: CategoriesScreen(),

      routes: {
        '/': (ctx) => TabsScreen(),
        '/category': (ctx) => CategoryMealScreen(),
        '/meal-detail': (ctx) => MealDetailScreen(),
        '/filters': (ctx) => FilterScreen(),
      },
    );
  }
}
