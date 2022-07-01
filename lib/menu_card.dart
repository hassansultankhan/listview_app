import 'package:flutter/material.dart';
import 'package:listview_app/meal.dart';

import 'meal.dart';

class MenuCard extends StatelessWidget {
  meal Meal;

  MenuCard(this.Meal);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Row(
        children: [
          SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              ("${Meal.imagePath}"),
              fit: BoxFit.cover,
              width: 115,
              height: 115,
            ),
          ),
          SizedBox(width: 5),
          Container(
            // height: 150,
            // width: 200,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${Meal.mealName}"),
                SizedBox(height: 15),
                Text(
                  "${Meal.mealAttribute}",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
