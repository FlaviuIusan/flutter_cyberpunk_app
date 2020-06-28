import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Wallpapers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: WallpapersWidget(),
    );
  }
}

class WallpapersWidget extends StatefulWidget {
  @override
  _WallpapersWidgetState createState() => _WallpapersWidgetState();
}

class _WallpapersWidgetState extends State<WallpapersWidget> {

  final List<String> images = <String>[];

  @override
  Widget build(BuildContext context) {
    images.add("https://assets.vg247.com/current//2020/03/cyberpunk_wallpaper_4.jpg");
    return Scaffold(
      backgroundColor: Colors.blue,
      body: _buildImages(),
    );
  }

  Widget _buildImage(String imageUrl) {
    return ListTile(
      title: Center(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
      trailing: Icon(
        Icons.favorite,
      ),
      onTap: () {

      },
    );
  }

  Widget _buildImages() {

    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext _context, int i) {
          if(i.isOdd){
            return Divider();
          }
          final int index = i~/2;

          if(index>images.length-1){
            for(int j=0; j<10; ++j) {
              images.add("https://assets.vg247.com/current//2020/03/cyberpunk_wallpaper_4.jpg");
            }
          }
          return _buildImage(images[index]);
        });
  }


}