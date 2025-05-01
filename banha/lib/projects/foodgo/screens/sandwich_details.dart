
import 'package:banha/projects/foodgo/data.dart';
import 'package:banha/projects/foodgo/models/sandwich_details.dart';
import 'package:flutter/material.dart';

class SandwichDetails extends StatefulWidget {
  SandwichDetails({super.key, required this.id});
  final String id;

  @override
  _SandwichDetailsState createState() => _SandwichDetailsState();
}

class _SandwichDetailsState extends State<SandwichDetails> {
  int quantity = 2;
  double spiciness = 0.3;

  @override
  Widget build(BuildContext context) {
    List<SandwichDetailsModel> sandwich = sandwichDetails.where((item) {
      return item.id.contains(widget.id);
    }).toList();
    print(sandwich);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: screenWidth * 0.7,
              height: screenHeight * 0.37,
              child: Image.asset(
                sandwich[0].image,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sandwich[0].title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      SizedBox(width: 4),
                      Text(
                        sandwich[0].rate,
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "•${sandwich[0].time}",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text(
                    sandwich[0].description,
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Spicy",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackHeight: 3,
                              thumbColor: Colors.red,
                              activeTrackColor: Colors.red,
                              inactiveTrackColor: Colors.grey.shade300,
                            ),
                            child: Slider(
                              value: spiciness,
                              onChanged: (value) {
                                setState(() {
                                  spiciness = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Portion",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (quantity > 1) quantity--;
                                    },
                                  );
                                },
                                icon: const Icon(Icons.remove),
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                quantity.toString(),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      quantity++;
                                    },
                                  );
                                },
                                icon: const Icon(Icons.add),
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.08,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          "\$${sandwich[0].cost}",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 16),
                          child: Text(
                            "ORDER NOW",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
