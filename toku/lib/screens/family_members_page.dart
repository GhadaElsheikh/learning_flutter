import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> familyMembers = const [
    ItemModel(
      imagePath: 'assets/images/family_members/family_father.png',
      nameInEnglish: 'father',
      nameInJapanese: 'chichi',
      soundPath: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_mother.png',
      nameInEnglish: 'mother',
      nameInJapanese: 'haha',
      soundPath: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_son.png',
      nameInEnglish: 'son',
      nameInJapanese: 'musuko',
      soundPath: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_daughter.png',
      nameInEnglish: 'daughter',
      nameInJapanese: 'musume',
      soundPath: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_grandfather.png',
      nameInEnglish: 'grandfather',
      nameInJapanese: 'ojiisan',
      soundPath: 'sounds/family_members/grandfather.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_grandmother.png',
      nameInEnglish: 'grandmother',
      nameInJapanese: 'obaasan',
      soundPath: 'sounds/family_members/grandmother.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_older_brother.png',
      nameInEnglish: 'older brother',
      nameInJapanese: 'ani',
      soundPath: 'sounds/family_members/older_brother.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_older_sister.png',
      nameInEnglish: 'older sister',
      nameInJapanese: 'ane',
      soundPath: 'sounds/family_members/older_sister.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_younger_brother.png',
      nameInEnglish: 'younger brother',
      nameInJapanese: 'otōto',
      soundPath: 'sounds/family_members/younger_brohter.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_younger_sister.png',
      nameInEnglish: 'younger sister',
      nameInJapanese: 'imōto',
      soundPath: 'sounds/family_members/younger_sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF46322B),
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            item: familyMembers[index],
            backgroundColor: Color(0xFF558837),
          );
        },
      ),
    );
  }
}
