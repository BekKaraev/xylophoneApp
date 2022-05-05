import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const  MyApp({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const Xylophone(),
    );
  }
}

class Xylophone extends StatefulWidget {
 const Xylophone({Key key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('flutter Xylophone'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            _buildConteiner(
              tus: const Color(0xffEF443A),
              notaNumber: '1',
            ),
            _buildConteiner(
              tus: const Color(0xffF99700),
              notaNumber: '2',
            ),
            _buildConteiner(tus: const Color(0xffFFE93B), notaNumber: '3'),
            _buildConteiner(tus: const Color(0xff4CB050), notaNumber: '4'),
            _buildConteiner(tus: const Color(0xff2E968C), notaNumber: '5'),
            _buildConteiner(tus: const Color(0xff2996F5), notaNumber: '6'),
            _buildConteiner(tus: const Color(0xff9B28B1), notaNumber: '7'),
          ],
        ),
      ),
    );
  }

  Expanded _buildConteiner({
    @required Color tus,
    @required String notaNumber,
  }) {
    return Expanded(
      child: Material(
        color: tus,
        child: InkWell(
          splashColor: Colors.black87,
          onTap: () {
            player.play('musics/note$notaNumber.wav');
          },
          child: Container(),
        ),
      ),
    );
  }
}
