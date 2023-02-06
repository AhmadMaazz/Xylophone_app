import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final int soundnum;
  final Color rightColor;
  final Color leftColor;
  final Size size;
  final Color color;
  final double limiter;
  const Button({
    Key? key,
    required this.size,
    required this.color,
    required this.limiter,
    required this.rightColor,
    required this.leftColor,
    required this.soundnum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        final player = AudioPlayer();
        await player.play(AssetSource('note$soundnum.wav'));
      },
      child: Container(
        alignment: Alignment.centerRight,
        width: size.width * limiter,
        height: size.width * 0.20,
        // color: Colors.red,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [rightColor, leftColor],
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.music_note,
            size: 40,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
