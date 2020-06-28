import 'package:flutter/material.dart';
import 'package:projectx/wallpapers.dart';

import 'info.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      home: MainMenuWidget(),
    );
  }
}

class MainMenuWidget extends StatefulWidget {
  @override
  _MainMenuWidgetState createState() => _MainMenuWidgetState();
}

class _MainMenuWidgetState extends State<MainMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("animatedbackground.gif"), //imaginea schimbata de timer
            fit: BoxFit.fill,
          ),
        ),
        alignment: Alignment(0.0, 1.5),
        child: _butoaneWidget(),
      )
    );
  }

  Widget _butoaneWidget(){

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          child: Container(
              width:250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image:AssetImage("infobutton.gif"),
                    fit:BoxFit.cover
                ),
              )
          ),onTap:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Info()),
          );
        },
        ),
        GestureDetector(
          child: Container(
              width:250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image:AssetImage("wallpapersbutton.gif"),
                    fit:BoxFit.cover,
                ),
              )
          ),onTap:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Wallpapers()),
          );
        },
        ),
        GestureDetector(
          child: Container(
              width:250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image:AssetImage("linksbutton.gif"),
                    fit:BoxFit.cover
                ),
              )
          ),onTap:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainMenu()),
          );
        },
        ),
      ],
      
    );
  }
}

