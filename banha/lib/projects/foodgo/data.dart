
import 'package:banha/projects/foodgo/models/sandwich.dart';
import 'package:banha/projects/foodgo/models/sandwich_details.dart';

List<SandwichModel> sandwiches = [
  SandwichModel(
      id: 's1',
      image: 'assets/images/sandwich1.png',
      name: 'Cheeseburger',
      title: "Wendy's Burger",
      rate: '4.9'),
  SandwichModel(
      id: 's2',
      image: 'assets/images/sandwich2.png',
      name: 'Hamburger',
      title: "Veggie Burger",
      rate: '4.8'),
  SandwichModel(
      id: 's3',
      image: 'assets/images/sandwich3.png',
      name: 'Hamburger',
      title: "Chicken Burger",
      rate: '4.7'),
  SandwichModel(
      id: 's4',
      image: 'assets/images/sandwich4.png',
      name: 'Hamburger',
      title: "Fried Chicken Burger",
      rate: '4.9'),
];

List<SandwichDetailsModel> sandwichDetails = [
  SandwichDetailsModel(
      id: 's1',
      image: "assets/images/sandwich1.png",
      title: "Cheeseburger Wendy's Burger",
      rate: '4.9',
      time: '29 min',
      description:
          "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
      cost: 100),
  SandwichDetailsModel(
      id: 's2',
      image: "assets/images/sandwich2.png",
      title: "Hamburger Veggie Burger",
      rate: '4.8',
      time: '19 min',
      description:
          "Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ",
      cost: 150),
  SandwichDetailsModel(
      id: 's3',
      image: "assets/images/sandwich3.png",
      title: "Hamburger Chicken Burger",
      rate: '4.7',
      time: '42 min',
      description:
          "Our chicken burger is a delicious and healthier alternative to traditional beef burgers, perfect for those looking for a lighter meal option. Try it today and experience the mouth-watering flavors of our Hamburger Chicken Burger!",
      cost: 110),
  SandwichDetailsModel(
      id: 's4',
      image: "assets/images/sandwich4.png",
      title: "Fried Chicken Burger",
      rate: '4.9',
      time: '14 min',
      description:
          "Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato, and a creamy sauce.",
      cost: 90),
];
