import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MealDetailsPage extends StatelessWidget {
  final String mealId;

  const MealDetailsPage(this.mealId);

  Widget buildSectionTitle(ctx, title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(ctx).textTheme.titleMedium,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 150,
        width: 300,
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final selectedMeal = DUMMY_RECIPES.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, "Ingredients"),
            buildContainer(
              ListView.builder(
                itemBuilder: ((context, index) => Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedMeal.ingredients[index]),
                    ),
                    color: Theme.of(context).colorScheme.secondary)),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, "Steps"),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('#${index + 1}'),
                      ),
                      title: Text(
                        selectedMeal.steps[index],
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    Divider(),
                  ],
                ),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
