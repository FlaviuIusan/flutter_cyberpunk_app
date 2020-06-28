import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    texts.add(MyText("Titlu", "Content content content content content content content content'\n' content content content")); //primul text ca sa nu fie 0 lenght
    return Scaffold(
      backgroundColor: Colors.blue,
      body: _buildTexts(),
    );
  }

  Widget _buildText(MyText text) {
    return ListTile(
      title: Text(
        text.title,
      ),
      subtitle: Text(
        text.content,
      ),
      trailing: Icon(
        Icons.favorite,
      ),
      onTap: () {

      },
    );
  }

  Widget _buildTexts() {

    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext _context, int i) {
          if(i.isOdd){
            return Divider();
          }
          final int index = i~/2;

          if(index>texts.length-1){
            for(int j=0; j<10; ++j) {
              texts.add(MyText(" \n Titlu",
                  '\n Content content content content content content content content \n content content \n content'));
            }
          }
          return _buildText(texts[index]);
        });
  }


}

class MyText{
  String title;
  String content;

  MyText(String title, String content){
    this.title = title;
    this.content = content;
  }

}