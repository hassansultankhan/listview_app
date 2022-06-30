import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Restarant Menu"),
      centerTitle: true ,
      backgroundColor: Colors.orange[600],
    ),
    body:ListView.builder(
      itemCount: 10,
      itemBuilder:(BuildContext c, int index)=> Container(
        height: 140,
        
      )
    ),
    );

  }
}