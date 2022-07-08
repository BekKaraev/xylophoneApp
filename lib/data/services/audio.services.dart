import 'package:audioplayers/audioplayers.dart';

class AudioServices{
   AudioCache player = AudioCache();
   void playNote(String notaNumber){
     player.play('musics/note$notaNumber.wav');
   }
}
final AudioServices audioServices = AudioServices();