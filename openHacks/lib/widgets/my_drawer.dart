import 'package:flutter/material.dart';

import '../screens/favourites_screen.dart';
import '../screens/videos_screen.dart';

class MyDrawer extends StatelessWidget {
  Widget _buildListTile(String title, IconData icon, Function onTap) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 10,
      ),
      leading: CircleAvatar(
        radius: 20,
        child: Icon(icon),
      ),
      title: Text(title),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          SizedBox(height:40),
          _buildListTile(
            "Fun Feed",
            Icons.home,
            () {
              Navigator.of(context).popAndPushNamed('/');
            },
          ),
           _buildListTile(
            "Favourites",
            Icons.favorite,
            () {
              Navigator.of(context).popAndPushNamed(FavouritesScreen.routeName);
            },
          ),
          _buildListTile(
            "Videos",
            Icons.video_library,
            () {
              Navigator.of(context).popAndPushNamed(VideosScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
