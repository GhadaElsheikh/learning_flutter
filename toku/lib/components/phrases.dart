import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/item.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xFF50ADC7),
      child: ItemInfo(item: item),
    );
  }
}
