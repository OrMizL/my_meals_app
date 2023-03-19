import 'package:flutter/material.dart';

class MealDetailsPage extends StatelessWidget {
  final String mealId;

  const MealDetailsPage(this.mealId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$mealId'),
      ),
      body: Center(
        child: Text('Hello!'),
      ),
    );
  }
}
