import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ColorSound {
  const ColorSound({required this.color, required this.soundPath});
  final String soundPath;
  final Color color;

  Future<void> playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(soundPath));
  }
}
