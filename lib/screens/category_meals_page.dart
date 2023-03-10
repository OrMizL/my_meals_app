import 'package:flutter/material.dart';

import '../dummy_data.dart';

class CategoryMealsPage extends StatelessWidget {
  final String id;
  final String title;

  const CategoryMealsPage(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_RECIPES.where((recipe) {
      return recipe.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text(categoryMeals[index].title);
      }, itemCount: categoryMeals.length,),
    );
  }
}
