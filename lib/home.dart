import 'package:flutter/material.dart';
import 'option.dart';
import 'offers.dart';
import 'registration.dart';
import 'macro.dart';
class GymHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Gym App'),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GymOptionButton(
              text: 'Show Offers',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OffersPage()),
                );
              },
            ),
            GymOptionButton(
              text: 'Register',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
            ),
            GymOptionButton(
              text: 'Bmi Calculator',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BmiCalculatorPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}