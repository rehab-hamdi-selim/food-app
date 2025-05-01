import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<Calculator> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: num1Controller,
                      keyboardType: TextInputType.number,
                      validator: (String? num) {
                        double? number = double.tryParse(num!);
                        if (number == null) {
                          return 'Enter correct decimal or int  number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: const Text('Num1'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: num2Controller,
                      validator: (String? num) {
                        double? number = double.tryParse(num!);
                        if (number == null) {
                          return 'Enter correct decimal or int  number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: const Text('Num2'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: 300,
                  height: 120,
                  alignment: Alignment.center,
                  child: Text('Result = $result'),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        double? num1 = double.tryParse(num1Controller.text);
                        double? num2 = double.tryParse(num2Controller.text);
                        if (num1 != null && num2 != null) {
                          setState(() {
                            result = num1 + num2;
                          });
                        }
                      },
                      child: const Text(
                        '+',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        double? num1 = double.tryParse(num1Controller.text);
                        double? num2 = double.tryParse(num2Controller.text);
                        if (num1 != null && num2 != null) {
                          setState(() {
                            result = num1 - num2;
                          });
                        }
                      },
                      child: const Text(
                        '-',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        double? num1 = double.tryParse(num1Controller.text);
                        double? num2 = double.tryParse(num2Controller.text);
                        if (num1 != null && num2 != null) {
                          setState(() {
                            result = num1 * num2;
                          });
                        }
                      },
                      child: const Text(
                        '*',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        double? num1 = double.tryParse(num1Controller.text);
                        double? num2 = double.tryParse(num2Controller.text);
                        if (num1 != null && num2 != null) {
                          setState(() {
                            result = num1 / num2;
                          });
                        }
                      },
                      child: const Text(
                        '/',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
