
import 'package:banha/core/style/colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.weight, required this.heightCm});
  final int weight;
  final double heightCm;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List result = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result = calculateBMI(weight: widget.weight, heightCm: widget.heightCm);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bmiBackgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: MyColors.bmiBackgroundColor,
        title: const Text(
          'BMI Result',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI is : ${result[0]} ',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 30),
            Text(
              'Your are : ${result[1]} ',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

List calculateBMI({required int weight, required double heightCm}) {
  double heightM = heightCm / 100; // Convert height to meters
  double bmi = weight / (heightM * heightM);
  List result = [];
  result.add(bmi.round());
  if (bmi < 18.5) {
    result.add("You are underweight.");
  } else if (bmi >= 18.5 && bmi < 24.9) {
    result.add("You have a normal weight.");
  } else if (bmi >= 25 && bmi < 29.9) {
    result.add("You are overweight.");
  } else if (bmi >= 30 && bmi < 34.9) {
    result.add("You are obese.");
  } else if (bmi >= 35) {
    result.add("You are extremely obese.");
  }
  return result;
}
