
import 'package:banha/core/custom_widgets/bmi/gender_customWidget.dart';
import 'package:banha/core/custom_widgets/bmi/weight_customWidget.dart';
import 'package:banha/core/style/colors.dart';
import 'package:banha/projects/task1/bmi_calculator/ui/result_screen.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double height = 140;
  int weight = 60;
  int age = 18;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          isMale = !isMale;
                        },
                      );
                    },
                    child: GenderCustomWidget(
                      gender: isMale,
                      txt: 'Male',
                      icon: Icons.male,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          isMale = !isMale;
                        },
                      );
                    },
                    child: GenderCustomWidget(
                      gender: !isMale,
                      txt: 'Female',
                      icon: Icons.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: MyColors.bmiWidgetsBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: const Text(
                      'Height',
                      style: TextStyle(color: Colors.grey, fontSize: 26),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text(
                            'cm',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Slider(
                      min: 130,
                      max: 200,
                      value: height,
                      onChanged: (v) {
                        setState(() => height = v.roundToDouble());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              children: [
                WeightCustomWidget(txt: 'Weight', number: weight),
                const SizedBox(
                  width: 10,
                ),
                WeightCustomWidget(txt: 'Age', number: age),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    weight: weight,
                    heightCm: height,
                  ),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 12),
              child: Text(
                'Calculate',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
