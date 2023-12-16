import 'package:flutter/material.dart';

class BmiCalculatorPage extends StatefulWidget {
  @override
  _MacroCalculatorPageState createState() => _MacroCalculatorPageState();
}

class _MacroCalculatorPageState extends State<BmiCalculatorPage> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  String advice = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Height (cm)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculateAdvice();
              },
              child: Text('Get Advice'),
            ),
            SizedBox(height: 20),
            Text(
              advice,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void calculateAdvice() {
    double weight = double.tryParse(weightController.text) ?? 0.0;
    double height = double.tryParse(heightController.text) ?? 0.0;

    double bmi = weight / ((height / 100) * (height / 100));

    setState(() {
      advice = getAdviceFromBMI(bmi);
    });
  }

  String getAdviceFromBMI(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight: Consider increasing your calorie intake.';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Normal weight: Maintain a balanced diet.';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'Overweight: Consider reducing your calorie intake and increasing physical activity.';
    } else {
      return 'Obese: Consult with a healthcare professional for personalized advice.';
    }
  }
}
