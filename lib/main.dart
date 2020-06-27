import 'dart:async';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

import 'mainmenu.dart';

void main() {
  runApp(MainApp());
}

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
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    player.play("maintheme.mp3");
    return Scaffold(
      body: _mainBody(
      ),
    );
  }




  Widget _mainBody(){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(_background), //imaginea schimbata de timer
          fit: BoxFit.fill,
        ),
      ),
      alignment: Alignment(0.5,0.5),
      child:  GestureDetector(
        child: Container(
            width:120,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image:AssetImage("download.jpg"),
                  fit:BoxFit.cover
              ),
            )
        ),onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainMenu()),
        );
      },
      )

    );
  }

}


