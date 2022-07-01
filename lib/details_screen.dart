import 'package:flutter/material.dart';
import 'package:listview_app/meal.dart';

class DetailScreen extends StatelessWidget {
  meal _Meal;
  DetailScreen(this._Meal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Details'),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
      ),
      body: SizedBox.expand(
          child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 25),
          CircleAvatar(
            radius: 150,
            backgroundImage: NetworkImage(
              ("${_Meal.imagePath}"),
              // fit: BoxFit.cover,
              // width: 250,
              // height: 250,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "${_Meal.mealName}",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 15),
          Text("${_Meal.mealAttribute}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900)),
        ],
      )),
    );
  }
}
