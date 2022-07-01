import 'package:flutter/material.dart';
import 'package:listview_app/menu_card.dart';

import 'details_screen.dart';
import 'meal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<meal> meals = [];
  @override
  void initState() {
    super.initState();
    meal m1 = meal(
        "https://www.thespruceeats.com/thmb/l4w6PvMqsz1EjueCAh_foPmYafM=/3456x3456/smart/filters:no_upscale()/garlic-burger-patties-333503-hero-01-e4df660ff27b4e5194fdff6d703a4f83.jpg",
        "Classic Beaf",
        "Classic Mix of Oninos, Tomatoes\nand Beef patty with hickery sauce");
    meals.add(m1);

    meal m2 = meal(
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/copycat-western-bacon-cheeseburger-2-1649170836.jpeg",
        "Turkey Bacon",
        "Classic Mix of Oninos, Tomatoes\nand Beef patty with hickery sauce");
    meals.add(m2);

    meal m3 = meal(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTihHeZVlogdZxHGgO8aR1kdZHiPxyj0ePybA&usqp=CAU",
        "Beef Tower ",
        "Classic Mix of Oninos, Tomatoes\nand Beef patty with hickery sauce");
    meals.add(m3);

    meal m4 = meal(
        "https://flaevor.com/wp-content/uploads/2020/09/BaconEggCheeseBurger-1.jpg",
        "The Egg Beast",
        "Classic Mix of Oninos, Tomatoes\nand Beef patty with hickery sauce");
    meals.add(m4);

    meal m5 = meal(
        "https://www.recipetineats.com/wp-content/uploads/2017/07/Chicken-Burgers-4.jpg",
        "Chicken Mania",
        "Classic Mix of Oninos, Tomatoes\nand Beef patty with hickery sauce");
    meals.add(m5);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restarant Menu"),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (BuildContext c, int index) => InkWell(
          child: Padding(
            padding: EdgeInsets.only(top: 8, left: 15, right: 15),
            child: Card(
              child: MenuCard(meals[index]),
              shadowColor: Colors.grey[50],
              elevation: 10,
            ),
          ),
          onTap: () => screenSwitch(meals[index]),
          onDoubleTap: () => deleteMeal(index),
        ),
      ),
    );
  }

  screenSwitch(meal temp) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(temp),
      ),
    );
  }

  deleteMeal(int index) {
    setState(() {
      meals.removeAt(index);
    });
  }
}
