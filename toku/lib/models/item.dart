import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  const ItemModel({
    required this.soundPath,
   this.imagePath,
    required this.nameInEnglish,
    required this.nameInJapanese,
  });

  final String? imagePath;
  final String nameInJapanese;
  final String nameInEnglish;
  final String soundPath;

  playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(soundPath)); // will immediately start playing
  }
}
