import 'package:flutter/material.dart';
import 'package:xylophoneapp/data/repositories/audio_repo.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String notaNumber;
  const CustomContainer({Key key, this.color, this.notaNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          splashColor: Colors.black87,
          onTap: () {
            audioRepo.playNote(notaNumber);
          },
          child: Container(),
        ),
      ),
    );
  }
}
