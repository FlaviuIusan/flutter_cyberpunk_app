import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Links extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: LinksWidget(),
    );
  }
}

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
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("infobutton.gif"), fit: BoxFit.cover),
                )),
            onTap: () {
              _launchURL("http://flutter.dev");
            },
          ),
          GestureDetector(
            child: Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("infobutton.gif"), fit: BoxFit.cover),
                )),
            onTap: () {},
          ),
          GestureDetector(
            child: Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("infobutton.gif"), fit: BoxFit.cover),
                )),
            onTap: () {},
          ),
          GestureDetector(
            child: Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("infobutton.gif"), fit: BoxFit.cover),
                )),
            onTap: () {},
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
