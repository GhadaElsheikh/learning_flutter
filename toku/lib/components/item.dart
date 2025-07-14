import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/item.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.backgroundColor});

  final ItemModel item;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(item.imagePath!),
          ),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}
