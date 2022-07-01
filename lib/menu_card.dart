import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Row(
        
        children: [
        Image.network("https://www.thespruceeats.com/thmb/l4w6PvMqsz1EjueCAh_foPmYafM=/3456x3456/smart/filters:no_upscale()/garlic-burger-patties-333503-hero-01-e4df660ff27b4e5194fdff6d703a4f83.jpg",
        fit: BoxFit.cover,
        ),
        
        Container(
          // height: 150,
          // width: 200,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [   
              Text("Burger Name"),
              SizedBox(height:15),
              Text("Burger Attributes"),
    
            ],
          ),
        )
        ],
      ),
    );
  }
}