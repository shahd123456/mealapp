import 'package:flutter/material.dart';
import 'package:mealapp/weghit/catgory_item.dart';
import 'package:mealapp/models.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.teal,
        title:Text("Meal App"),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, '/favorites');
            },
          )
        ],

      ),
      body:
      ListView.builder(
        itemCount: 2,
          itemBuilder: (context,index){return catrory_item(catrory:modelss[index],);})
    );
  }
}