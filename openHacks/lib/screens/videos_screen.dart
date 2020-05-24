import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/my_drawer.dart';

class VideosScreen extends StatelessWidget {

  static const routeName = '/videos';

  Future<void> _launchUrl(String url, BuildContext context) async {
    try {
      await launch(url);
    } catch (error) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("An error has occured"),
          actions: <Widget>[
            FlatButton(
              child: Text("Okay"),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  Widget _videoItem(String image, String website, BuildContext context){
    return GestureDetector(
      onTap: () {
        _launchUrl(website, context);
      },
        child: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        height: 300,
        child: Image.network(image),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
      ),
      drawer: MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 10,)
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            width: double.infinity,
            child: Text(
              "Tap the images check out different face mask videos!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          _videoItem("https://media.giphy.com/media/UTesoPxNXJ8VS65bf1/giphy.gif",
          "https://www.youtube.com/watch?v=Mgp7DSGN33k", 
          context)
        ],
      ),
    );
  }
}
