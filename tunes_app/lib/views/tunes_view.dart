import 'package:flutter/material.dart';
import 'package:tunes_app/models/color_sound.dart';
import 'package:tunes_app/widgets/tune_box.dart';

class TunesApp extends StatelessWidget {
  const TunesApp({super.key});

  final List<ColorSound> colorSoundList = const [
    ColorSound(color: Colors.red, soundPath: 'note1.wav'),
    ColorSound(color: Colors.orange, soundPath: 'note2.wav'),
    ColorSound(color: Colors.yellow, soundPath: 'note3.wav'),
    ColorSound(color: Colors.green, soundPath: 'note4.wav'),
    ColorSound(color: Colors.greenAccent, soundPath: 'note5.wav'),
    ColorSound(color: Colors.blue, soundPath: 'note6.wav'),
    ColorSound(color: Colors.purple, soundPath: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color(0xff253238),
          title: Text(
            'Flutter Tune',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        body: Column(
          children: colorSoundList.map((e) => TuneBox(colorSound: e)).toList(),
        ),
      ),
    );
  }
}

// List<TuneBox> createList(List<ColorSound> colorSounds) {
//   List<TuneBox> tuneBoxes = [];
//   for (int i = 0; i < colorSounds.length; i++) {
//     tuneBoxes.add(TuneBox(colorSound: colorSounds[i]));
//   }
//   return tuneBoxes;
// }
