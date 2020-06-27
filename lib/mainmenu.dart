import 'package:flutter/material.dart';

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
        alignment: Alignment(0.0, 0.5),
        child: _butoaneWidget(),
      )
    );
  }

  Widget _butoaneWidget(){
    return Column(
      children: [
        GestureDetector(
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
        ),
        GestureDetector(
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
        ),
        GestureDetector(
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
        ),
      ],
      
    );
  }
}

