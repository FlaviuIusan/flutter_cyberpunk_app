import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'mainmenu.dart';
class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async {

        return true;
      },
      child: new MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: InfoWidget(),
    ));

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
          style: TextStyle(fontSize: 45,fontFamily: "Cyberpunk"),
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
        itemCount: 7,
        itemBuilder: (BuildContext _context, int i) {
        texts.add(MyText("Cyberpunk","\n  Cyberpunk 2077 is an open-world, action-adventure role-playing video game, being developed and published by CD Projekt RED, scheduled to be released November 19, 2020. The game was announced during the 2012 CD Projekt Red Summer Conference as the official video game adaption of Mike Pondsmith's pen and paper RPG Cyberpunk 2020. Originally titled Cyberpunk, the 2077 subtitle was added in late 2012.\n"));
        texts.add(MyText("Setting","\n   Cyberpunk 2077 is a continuation of the events of Cyberpunk 2020, taking an alternate path to that of Cyberpunk V3.0. The game is set in the dystopian metropolis of Night City. It is in the Free State of Northern California. Night City is located south of San Francisco around the area of Morro Bay, CA. During Cyberpunk 2020, Night City is said to have a population of more than five million inhabitants. However, this number is suspected to be considerably larger in 2077.\n   Following an economic collapse sometime during the early 21st century, the United States is forced to rely on large corporations to survive. These corporations deal in a wide range of areas, such as weapons, robotics, cybernetics, pharmaceuticals, communications and biotechnology, and many of these companies operate above the law.\n   The game follows the story of V — a hired gun on the rise in Night City, the most violent and dangerous metropolis of the corporate-ruled future. A robust character creator will allow players to choose V’s gender, visual appearance, as well as historical background — all of which may influence the shape of the game.\n\n"));
        texts.add(MyText("Plot","\n  The player character V, is contracted along with Jackie Welles, to steal an important piece of technology from the Arasaka Corporation - know as the chip of immortality - by fixer Dexter Deshawn. The duo manage to infiltrate the megacorp and steal the device but the plan goes awry and Jackie appears to die. After meeting with Dexter, V is betrayed and left for dead in a landfill, but manages to survive - possibly in-part due to the chip of immortality - and is haunted by the digital-ghost of iconic Rockerboy, Johnny Silverhand.\n"));
        texts.add(MyText("Gameplay","\n  Cyberpunk is an open world, non-linear RPG with an FPS style in which players are able to heavily customize their character to suit their play style. Gun play, exploration, player choice and activities such as hacking are to feature heavily throughout the game with missions, quests and objectives being completed in a variety of different ways.\n   One such example of gameplay is non-english speaking characters featured throughout Night City. Players may be required to purchase a translator implant to understand them, with varying levels of success based on the implant they buy.\n   The world will have dynamic weather and a day/night cycle to make it truly immersive.\n"));
        texts.add(MyText("Perspective","\n  The game is played primarily from a first-person perspective. A new combat system has been developed around this perspective that includes the use of guns, melee, powers, and even combat stimulants that grant additional bonuses, such as increasing speed. Players may choose a third-person perspective whilst driving vehicles, such as cars and motorbikes. Although players can utilize flying machines, these are all automated.\n"));
        texts.add(MyText("Attributes","\n  Player characters will have attributes like Strength, which can be raised via leveling and installing cyberware. Skills and perks can also be selected; skills are related to performing actions - such as hacking, crafting, specific weapons, etc. - while perks can be unlocked with both Street Cred and XP.\n   One can also choose from a set of background stories (Nomad, Street Kid, or Corporate) and other elements to fully flesh out their characters (like childhood hero, key life events, and what drove them to Night City), all of which will have an impact on the game. Selecting a background story doesn't lock a player into that for the rest of the story: if a player decides to betray their original background group, they can do so (like go from Street Kid to Corporate).\n"));
        texts.add(MyText("Development","\n  During the beginning of production it was reported that a team of 50 people were working on it, however after the completion of the Witcher 3 and its subsequent expansion packs, the team has reportedly grown larger, with dozens of jobs being advertised on the CDPR website. In early 2018 it was reported that a new studio had been opened in Wroclaw, Poland to assist in the development of the game.\n"));
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
