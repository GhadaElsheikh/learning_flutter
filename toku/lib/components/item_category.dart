import 'package:flutter/material.dart';
import 'package:toku/models/category.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  const Category({
    super.key,
     required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return category.newRoute;
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 17),
        alignment: Alignment.centerLeft,
        height: 63,
        width: double.infinity,
        color: category.color,
        child: Text(
          category.name,
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}
