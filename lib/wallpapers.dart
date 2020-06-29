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

    return Scaffold(
      body: _buildImages(),
    );
  }

  Widget _buildImage(String imageUrl) {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.amberAccent,
      ),
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
        itemCount: 11,
        itemBuilder: (BuildContext _context, int i) {
            images.add("https://wallpapershome.com/images/pages/pic_h/19064.jpg");
            images.add("https://wallpapershome.com/images/pages/pic_h/19196.jpg");
            images.add("https://pbs.twimg.com/media/D7P_yLdX4AAvJWO?format=jpg&name=large");
            images.add("https://res.allmacwallpaper.com/pic/Thumbnails/20093_728.jpg");
            images.add("https://images.hdqwalls.com/wallpapers/2019-cyberpunk-2077-4k-8t.jpg");
            images.add("https://images.alphacoders.com/102/thumb-1920-1021182.jpg");
            images.add("https://assets.vg247.com/current//2020/03/cyberpunk_wallpaper_3.jpg");
            images.add("https://www.renderhub.com/renderhub/cyberpunk-2077-3d-wallpaper/cyberpunk-2077-3d-wallpaper_1920x1080.jpg");
            images.add("https://www.myplaystationwallpapers.net/1920x1080/cyberpunk-2077-pursuit.jpg");
            images.add("https://www.pxwall.com/wp-content/uploads/2018/08/cyberpunk-2077-4k-ultra-hd.jpg");
            images.add("https://www.xboxwallpapers.net/1920x1080/cyberpunk-2077-concept-art-shootout.jpg");
          return _buildImage(images[i]);
        });
  }


}