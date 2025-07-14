import 'package:flutter/material.dart';
import 'package:mealapp/model/model.dart';
import 'package:mealapp/routes.dart';
import 'package:mealapp/models.dart'; // مهم عشان نجيب الـ meals

class catrory_item extends StatelessWidget {
  const catrory_item({super.key, required this.catrory});
  final Model catrory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              Approutes.mealscreen,
              arguments: {
                "id": catrory.id,
                "name": catrory.name,
                "meals": meals, // من models.dart
              },
            );
          },
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 200,
            child: Container(
              height: 40,
              width: double.infinity,
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              child: Text(
                catrory.name,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(catrory.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

