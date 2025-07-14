import 'package:flutter/material.dart';
import 'package:mealapp/favorites.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = Favorites.favoriteMeals;
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.network(favorites[index].id, width: 50, height: 50, fit: BoxFit.cover),
              title: Text(favorites[index].name),
              subtitle: Text("Salary: ${favorites[index].salary}"),
            ),
          );
        },
      ),
    );
  }
}
