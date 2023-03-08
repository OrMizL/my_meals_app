import 'package:flutter/material.dart';

class CategoryMealsPage extends StatelessWidget {
  const CategoryMealsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe title'),
      ),
      body: Center(
        child: Text('Category Recipes'),
      ),
    );
  }
}
