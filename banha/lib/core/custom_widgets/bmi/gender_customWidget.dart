
import 'package:banha/core/style/colors.dart';
import 'package:flutter/material.dart';

class GenderCustomWidget extends StatelessWidget {
   const GenderCustomWidget(
      {super.key, required this.txt, required this.icon, required this.gender});
  final String txt;
  final IconData icon;
  final bool gender;

  @override
  Widget build(BuildContext context) {
    return Card(
      color:
          gender ? Colors.pink : MyColors.bmiWidgetsBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Icon(
              icon,
              size: 100,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 10),
            child: Text(
              txt,
              style: TextStyle(
                  fontSize: 23,
                  color: gender ? Colors.white : Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
