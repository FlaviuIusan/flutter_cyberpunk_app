import 'dart:async';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  //two
  //modification
  //1
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: _mainBody(),
    );
  }

  Widget _mainBody(){
    return Center(
      child: RaisedButton(
        onPressed: () {
          print("Button Apasat");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondApp()),
          );
        },
        child: Text(
          "Button",
        ),
      ),
    );
  }
}

class SecondApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'projectx',
      home: SecondScreen(),

    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  String _background = "intro.gif"; //imaginea in _mainBody -> decoration
  Timer _timer;
  int _animationRemaining = 5;
  final player = AudioCache();
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    player.play("sound.mp3");
    _timer = new Timer.periodic(oneSec,
            (timer) {
          if(_animationRemaining<1){
            timer.cancel();
            player.clear("sound.mp3");
          }
          else{
            _animationRemaining = _animationRemaining - 1;
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    startTimer(); //pornesc timer
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
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment(0.5,0.5),
      child: FlatButton(
        color: Colors.blue,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: () {
          print("Button Apasat Second");
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainApp()),
          );
        },
        child: Text(
          "Flat Button",
          style: TextStyle(fontSize: 20.0),
        ),
      ),

    );
  }
}

