
import 'package:banha/core/style/colors.dart';
import 'package:flutter/material.dart';

class WeightCustomWidget extends StatefulWidget {
  WeightCustomWidget({super.key, required this.txt, required this.number});
  final String txt;
  int number;

  @override
  State<WeightCustomWidget> createState() => _WeightCustomWidgetState();
}

class _WeightCustomWidgetState extends State<WeightCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: MyColors.bmiWidgetsBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                widget.txt,
                style: const TextStyle(fontSize: 24, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Text(
                '${widget.number}',
                style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          widget.number++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 28,
                      ),
                    )),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          widget.number--;
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 28,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
