import 'package:flutter/material.dart';
import 'package:toku/components/item_category.dart';
import 'package:toku/models/category.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      name: 'Numbers',
      color: Color(0xFFEf9235),
      newRoute: NumbersPage(),
    ),
    CategoryModel(
      name: 'Family Members',
      color: Color(0xFF558837),
      newRoute: FamilyMembersPage(),
    ),
    CategoryModel(
      name: 'Colors',
      color: Color(0xFF79359F),
      newRoute: ColorsPage(),
    ),
    CategoryModel(
      name: 'Phrases',
      color: Color(0xFF50ADC7),
      newRoute: PhrasesPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Toku', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Category(category: categories[index]);
        },
      ),
    );
  }
}
