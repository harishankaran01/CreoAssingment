import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductCard extends StatelessWidget {
  final String news;
  final String date;
  final String newsimage;

  const ProductCard({
    super.key,
    required this.news,
    required this.newsimage,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Center(
              child: Image.asset(
                newsimage,
                height: 275,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            date,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            news,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}