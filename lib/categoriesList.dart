import 'package:flutter/material.dart';
import 'package:creo_assignment1/categories.dart';
class Categorydata extends StatelessWidget {
  final String title;
  final String image;
  const Categorydata({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Image(
                image: AssetImage(image),
                height: 30,
                width: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
          )
        ],
      ),
    );
  }
}