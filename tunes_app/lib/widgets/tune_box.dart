import 'package:flutter/material.dart';
import 'package:tunes_app/models/color_sound.dart';

class TuneBox extends StatelessWidget {
  const TuneBox({super.key, required this.colorSound});

  final ColorSound colorSound;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          colorSound.playSound();
        },
        child: Container(color: colorSound.color, child: const Row()),
      ),
    );
  }
}
