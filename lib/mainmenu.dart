import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'projectx',
      home: Scaffold(
      body: MainMenuState()
    ),
    );
  }
}

class MainMenuState extends StatefulWidget {
  @override
  _MainMenuStateState createState() => _MainMenuStateState();
}

class _MainMenuStateState extends State<MainMenuState> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

