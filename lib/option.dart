import 'package:flutter/material.dart';
class GymOptionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  GymOptionButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(200, 60),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5.0,
        ),
      ),
    );
  }
}


