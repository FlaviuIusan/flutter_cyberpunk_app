import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 50,fontFamily: "Cyberpunk"),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(1),
          child:AutoSizeText (
              text.content,
              style: GoogleFonts.robotoMono(
                  textStyle: TextStyle(fontSize: 20)

              )
          ),
        ),
        onTap: () {},
      ),
      decoration: new BoxDecoration( image: DecorationImage(
          image: AssetImage("textbackground.jpg"), //imaginea schimbata de timer
          fit: BoxFit.fill,
          ),
      ),
    );
  }

  Widget _buildTexts() {

      return ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext _context, int i) {
        texts.add(MyText("Cyberpunk","\n  Cyberpunk 2077 is an open-world, action-adventure role-playing video game, being developed and published by CD Projekt RED, scheduled to be released November 19, 2020. The game was announced during the 2012 CD Projekt Red Summer Conference as the official video game adaption of Mike Pondsmith's pen and paper RPG Cyberpunk 2020. Originally titled Cyberpunk, the 2077 subtitle was added in late 2012.\n"));

        texts.add(MyText("Setting","\n   Cyberpunk 2077 is a continuation of the events of Cyberpunk 2020, taking an alternate path to that of Cyberpunk V3.0. The game is set in the dystopian metropolis of Night City. It is in the Free State of Northern California. Night City is located south of San Francisco around the area of Morro Bay, CA. During Cyberpunk 2020, Night City is said to have a population of more than five million inhabitants. However, this number is suspected to be considerably larger in 2077.\n   Following an economic collapse sometime during the early 21st century, the United States is forced to rely on large corporations to survive. These corporations deal in a wide range of areas, such as weapons, robotics, cybernetics, pharmaceuticals, communications and biotechnology, and many of these companies operate above the law.\n   The game follows the story of V — a hired gun on the rise in Night City, the most violent and dangerous metropolis of the corporate-ruled future. A robust character creator will allow players to choose V’s gender, visual appearance, as well as historical background — all of which may influence the shape of the game.\n   The world is inspired by the works of authors such as William Gibson (author of Neuromancer) and Phillip K Dick, whose novel Do Androids Dream of Electric Sheep? and subsequent movie adaption Blade Runner heavily influenced the creator, Mike Pondsmith, in creating the original tabletop RPG.\n"));
          return _buildText(texts[i]);
        },

      );
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
