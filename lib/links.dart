import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class LinksWidget extends StatefulWidget {
  @override
  _LinksWidgetState createState() => _LinksWidgetState();
}

class _LinksWidgetState extends State<LinksWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildLinks(),
    );
  }

  Widget _buildLinks() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(

                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("sitelinkbackground.gif"), fit: BoxFit.fill),
                )),
            onTap: () {
              _launchURL("https://www.cyberpunk.net/us/en/");
            },
          ),
          GestureDetector(
            child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("youtubelinkbackground.gif"), fit: BoxFit.fill),
                )),
            onTap: () {
              _launchURL("https://www.youtube.com/c/CyberpunkGame/");
            },
          ),
          GestureDetector(
            child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("redditlinkbackground.gif"), fit: BoxFit.fill),
                )),
            onTap: () {
              _launchURL("https://www.reddit.com/r/cyberpunkgame/");
            },
          ),
          GestureDetector(
            child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("facebooklinkbackground.gif"), fit: BoxFit.fill),
                )),
            onTap: () {
              _launchURL("https://www.facebook.com/CDPROJEKTRED/");
            },
          ),
        ],
      ),
    );
  }

  _launchURL(String site) async {
    String url = site;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
}
