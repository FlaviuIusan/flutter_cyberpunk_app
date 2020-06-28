import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class WallpapersWidget extends StatefulWidget {
  @override
  _WallpapersWidgetState createState() => _WallpapersWidgetState();
}

class _WallpapersWidgetState extends State<WallpapersWidget> {

  final List<String> images = <String>[];

  @override
  Widget build(BuildContext context) {
    images.add("https://i.pinimg.com/originals/e9/85/93/e98593999fa2d78bf7c2fef3645d515e.jpg");
    return Scaffold(
      body: _buildImages(),
    );
  }

  Widget _buildImage(String imageUrl) {
    return Container(
    child: ListTile(
      subtitle: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      onTap: () {

      },
    ),
    );
  }

  Widget _buildImages() {

    return ListView.builder(
        itemBuilder: (BuildContext _context, int i) {
          if(i.isOdd){

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