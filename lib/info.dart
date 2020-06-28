import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: InfoWidget(),
    );
  }
}

class InfoWidget extends StatefulWidget {
  @override
  _InfoWidgetState createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  final List<MyText> texts = <MyText>[];
  bool scrollable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildTexts(),
    );
  }

  Widget _buildText(MyText text) {
    return Container(
      child: ListTile(
        title: Text(
          text.title,
        ),
        subtitle: Text(
          text.content,
        ),
        onTap: () {},
      ),
      decoration: new BoxDecoration(color: Colors.red),
    );
  }

  Widget _buildTexts() {
    bool isScrolable = true;
      return ListView.builder(
        itemBuilder: (BuildContext _context, int i) {
          if (texts.length <1) {
            for (int j = 0; j < 10; ++j) {
              texts.add(MyText(" \n Titlu",
                  '\n Content content content content content content content content content content content content content content content content content content content content content content content content content content'
                      'content content content content content content content content content content content content content content content content content content content content content content content content 2'
                      'content content content content content content content content content content content content content content content content content content content content content content content content 3'));
            }
          }
          if(i>8){
            texts.add(MyText("", " "));
          }
          return _buildText(texts[i]);
        },

      )
      ;
  }
}

class MyText {
  String title;
  String content;

  MyText(String title, String content) {
    this.title = title;
    this.content = content;
  }
}
