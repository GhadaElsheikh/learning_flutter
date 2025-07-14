import 'package:flutter/material.dart';
import 'package:toku/components/phrases.dart';
import 'package:toku/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrasesList = const [
  ItemModel(
    soundPath: 'sounds/phrases/are_you_coming.wav',
    nameInEnglish: 'Are you coming?',
    nameInJapanese: 'Kimasu ka?',
  ),
  ItemModel(
    soundPath: 'sounds/phrases/dont_forget_to_subscribe.wav',
    nameInEnglish: "Don't forget to subscribe",
    nameInJapanese: 'Kōdoku o wasurenaide',
  ),
  ItemModel(
    soundPath: 'sounds/phrases/how_are_you_feeling.wav',
    nameInEnglish: 'How are you feeling?',
    nameInJapanese: 'Kibun wa dō?',
  ),
  ItemModel(
    soundPath: 'sounds/phrases/i_love_anime.wav',
    nameInEnglish: 'I love anime',
    nameInJapanese: 'Anime ga daisuki',
  ),
  ItemModel(
    soundPath: 'sounds/phrases/i_love_programming.wav',
    nameInEnglish: 'I love programming',
    nameInJapanese: 'Puroguramingu ga daisuki',
  ),
  ItemModel(
    soundPath: 'sounds/phrases/programming_is_easy.wav',
    nameInEnglish: 'Programming is easy',
    nameInJapanese: 'Puroguramingu wa kantan',
  ),
  ItemModel(
    soundPath: 'sounds/phrases/what_is_your_name.wav',
    nameInEnglish: 'What is your name?',
    nameInJapanese: 'Namae wa nan desu ka?',
  ),
  ItemModel(
    soundPath: 'sounds/phrases/where_are_you_going.wav',
    nameInEnglish: 'Where are you going?',
    nameInJapanese: 'Doko ni ikimasu ka?',
  ),
  ItemModel(
    soundPath: 'sounds/phrases/yes_im_coming.wav',
    nameInEnglish: "Yes, I'm coming",
    nameInJapanese: 'Hai, ikimasu',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Phrases', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Phrases(item: phrasesList[index]);
        },
      ),
    );
  }
}
