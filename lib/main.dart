import 'dart:async';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mainmenu.dart';

void main() {
  runApp(MainApp());
}
AudioCache cache = new AudioCache();

AudioPlayer audioPlayer;
bool _buttonstate = true;



class MainApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'projectx',
      home: MainScreen(),

    );
  }
}

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}



class _MainScreenState extends State<MainScreen> {

  String _background = "intro.gif"; //imaginea in _mainBody -> decoration
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    cache.play("audio/logosound.mp3");
    setAudio();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child:AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Image(
            image: AssetImage("titleanimation.gif"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: _mainBody(
      ),
    );
  }

  static Future<void> setAudio() async {
    audioPlayer = await cache.loop("audio/maintheme.mp3");

  }


  Widget _mainBody(){

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(_background), //imaginea schimbata de timer
          fit: BoxFit.fill,
        ),
      ),
      alignment: Alignment(0,0.5),
      child: AnimatedOpacity(

          opacity: _buttonstate? 1.0:0.0,
          duration: Duration(milliseconds: 2000),

        child:GestureDetector(
          child: Container(
              width:200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image:AssetImage("enterbutton.gif"),
                    fit:BoxFit.fill
                ),
              )
          ),onTap:(){

            //audioPlayer.stop();
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainMenuWidget()),
        );
      },
      )
      )

    );}

}

