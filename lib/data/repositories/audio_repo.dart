import 'package:xylophoneapp/data/services/audio.services.dart';

class AudioRepo {
  void playNote(String notaNumber) {
    audioServices.playNote(notaNumber);
  }
}
final AudioRepo audioRepo = AudioRepo();