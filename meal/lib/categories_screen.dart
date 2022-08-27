import 'package:flutter/material.dart';
import 'package:meal/category_item.dart';
import 'package:meal/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        children: DummyData.map((catdata) =>
            CategoryItem(catdata.title, catdata.color, catdata.id)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20));
  }
}
