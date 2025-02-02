import 'package:flutter/material.dart';
import 'package:projects/models/clothing_model.dart';
import 'package:projects/widgets/clothing_card_data.dart';

class ClothingCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String description;
  final double price;

  const ClothingCard({super.key, required this.id, required this.name, required this.image, required this.description, required this.price,});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Clothing(id: id, name: name, img: image, description: description, price: price, ))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ClothingCardData(image: image, name: name, description: description, price: price),
        ),
      ),
    );
  }
}
