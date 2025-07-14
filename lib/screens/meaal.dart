import 'package:flutter/material.dart';
import 'package:mealapp/model/meal.dart';
import 'package:mealapp/model/model.dart';
import 'package:mealapp/models.dart';
import 'package:mealapp/favorites.dart';

class Meaal extends StatelessWidget {
  const Meaal({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String id = data["id"];
    List<Model> models = data["meals"];

    List<Model> mealsFilter = models.where((test) => test.id == id).toList();


    final meal = Meal(
      name: mealsFilter.first.name,
      salary: "50",
      id: mealsFilter.first.image,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("${data["name"]}"),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Favorites.favoriteMeals.add(meal);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Added to favorites!")),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Image.network(meal.id),
      ),
    );
  }
}
