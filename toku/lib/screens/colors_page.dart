import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> colors = const [
    ItemModel(
      imagePath: 'assets/images/colors/color_black.png',
      nameInEnglish: 'black',
      nameInJapanese: 'kuro',
      soundPath: 'sounds/colors/black.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_red.png',
      nameInEnglish: 'red',
      nameInJapanese: 'aka',
      soundPath: 'sounds/colors/red.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_brown.png',
      nameInEnglish: 'brown',
      nameInJapanese: 'chairo',
      soundPath: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_yellow.png',
      nameInEnglish: 'yellow',
      nameInJapanese: 'kiiro',
      soundPath: 'sounds/colors/yellow.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_gray.png',
      nameInEnglish: 'gray',
      nameInJapanese: 'haiiro',
      soundPath: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_dusty_yellow.png',
      nameInEnglish: 'dusty yellow',
      nameInJapanese: 'kusunda kiiro',
      soundPath: 'sounds/colors/dusty_yellow.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_green.png',
      nameInEnglish: 'green',
      nameInJapanese: 'midori',
      soundPath: 'sounds/colors/green.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_white.png',
      nameInEnglish: 'white',
      nameInJapanese: 'shiro',
      soundPath: 'sounds/colors/white.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Colors', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(item: colors[index], backgroundColor: Color(0xFF79359F));
        },
      ),
    );
  }
}
