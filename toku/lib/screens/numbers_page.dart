import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      imagePath: 'assets/images/numbers/number_one.png',
      nameInEnglish: 'one',
      nameInJapanese: 'ichi',
      soundPath: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_two.png',
      nameInEnglish: 'two',
      nameInJapanese: 'ni',
      soundPath: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_three.png',
      nameInEnglish: 'three',
      nameInJapanese: 'san',
      soundPath: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_four.png',
      nameInEnglish: 'four',
      nameInJapanese: 'yon',
      soundPath: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_five.png',
      nameInEnglish: 'five',
      nameInJapanese: 'go',
      soundPath: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_six.png',
      nameInEnglish: 'six',
      nameInJapanese: 'roku',
      soundPath: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_seven.png',
      nameInEnglish: 'seven',
      nameInJapanese: 'nana',
      soundPath: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_eight.png',
      nameInEnglish: 'eight',
      nameInJapanese: 'hachi',
      soundPath: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_nine.png',
      nameInEnglish: 'nine',
      nameInJapanese: 'kyuu',
      soundPath: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_ten.png',
      nameInEnglish: 'ten',
      nameInJapanese: 'juu',
      soundPath: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Numbers', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(item: numbers[index], backgroundColor: Color(0xFFEf9235));
        },
      ),
    );
  }
}
