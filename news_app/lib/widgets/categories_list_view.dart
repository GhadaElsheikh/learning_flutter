import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  final List<CategoryModel> categoriesList = const [
    CategoryModel(name: 'Business', imgPath: 'assets/business.avif'),
    CategoryModel(name: 'Entertainment', imgPath: 'assets/entertaiment.avif'),
    CategoryModel(name: 'General', imgPath: 'assets/general.avif'),
    CategoryModel(name: 'Health', imgPath: 'assets/health.avif'),
    CategoryModel(name: 'Science', imgPath: 'assets/science.avif'),
    CategoryModel(name: 'Sports', imgPath: 'assets/sports.avif'),
    CategoryModel(name: 'Technology', imgPath: 'assets/technology.jpeg'),
  ];

  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categoriesList.map((e) => CategoryCard(category: e)).toList(),
      ),
    );
  }
}
