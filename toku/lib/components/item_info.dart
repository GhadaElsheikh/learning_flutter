import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});

  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 1),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              item.nameInJapanese,
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
            Text(
              item.nameInEnglish,
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
          ],
        ),
        Spacer(flex: 7),
        IconButton(
          onPressed: () {
            item.playSound();
          },
          icon: const Icon(Icons.play_arrow, color: Colors.white),
        ),
        Spacer(flex: 1),
      ],
    );
  }
}
