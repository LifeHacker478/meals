import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Container();
    } else {
      return ListView.builder(
        itemBuilder: (ctx, ind) {
          return MealItem(
            id: favoriteMeals[ind].id,
            title: favoriteMeals[ind].title,
            imageUrl: favoriteMeals[ind].imageUrl,
            duration: favoriteMeals[ind].duration,
            complexity: favoriteMeals[ind].complexity,
            affordability: favoriteMeals[ind].affordability,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
