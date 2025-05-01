
import 'package:banha/projects/foodgo/models/sandwich.dart';
import 'package:banha/projects/foodgo/screens/sandwich_details.dart';
import 'package:flutter/material.dart';

class SandwichItem extends StatelessWidget {
  const SandwichItem({super.key, required this.sandwichModel});

  final SandwichModel sandwichModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => SandwichDetails(
              id: sandwichModel.id,
            ),
          ),
        );
      },
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: AssetImage(
                    sandwichModel.image,
                  ),
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
              ),
              Text(
                sandwichModel.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                sandwichModel.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Icon(Icons.star),
                  Text(sandwichModel.rate),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
