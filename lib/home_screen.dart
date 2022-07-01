import 'package:flutter/material.dart';
import 'package:listview_app/menu_card.dart';

import 'meal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<meal> meals = [];
  @override
  Widget build(BuildContext context) {
    meal m1 = meal("https://www.thespruceeats.com/thmb/l4w6PvMqsz1EjueCAh_foPmYafM=/3456x3456/smart/filters:no_upscale()/garlic-burger-patties-333503-hero-01-e4df660ff27b4e5194fdff6d703a4f83.jpg",
                   "Classic Beaf Burger",
                   "Classic Mix of Oninos, Tomatoes and Beef patty with hickery sauce");
    meals.add(m1);

    meal m2 = meal("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/copycat-western-bacon-cheeseburger-2-1649170836.jpeg",
                   "Classic Beaf Burger",
                   "Classic Mix of Oninos, Tomatoes and Beef patty with hickery sauce");
    meals.add(m2);

    meal m3 = meal("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTihHeZVlogdZxHGgO8aR1kdZHiPxyj0ePybA&usqp=CAU",
                   "Classic Beaf Burger",
                   "Classic Mix of Oninos, Tomatoes and Beef patty with hickery sauce");
    meals.add(m3);

    meal m4 = meal("data:image/jpeg;base64,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",
                   "Classic Beaf Burger",
                   "Classic Mix of Oninos, Tomatoes and Beef patty with hickery sauce");
    meals.add(m4);

    meal m5 = meal("https://www.recipetineats.com/wp-content/uploads/2017/07/Chicken-Burgers-4.jpg",
                   "Classic Beaf Burger",
                   "Classic Mix of Oninos, Tomatoes and Beef patty with hickery sauce");
    meals.add(m5);
    







    return Scaffold(
      appBar: AppBar(
        title: Text("Restarant Menu"),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext c, int index) => Card(
          child: MenuCard(),
        ),
      ),
    );
  }
}
