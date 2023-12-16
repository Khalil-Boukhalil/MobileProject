import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp(MyGymApp());
}

class MyGymApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Gym App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,

      ),
      home: GymHomePage(),
    );
  }
}







