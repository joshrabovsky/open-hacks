import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';

import '../providers/info.dart';

class MaskItem extends StatelessWidget {
  final String image;
  final String website;
  final int index;
  final bool isFavouriteScreen;
  MaskItem({this.index, this.website, this.image, this.isFavouriteScreen});

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

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                child: Text("Go To Website"),
                onPressed: () {
                  _launchUrl(website, context);
                },
              ),
              if (!isFavouriteScreen)
                Consumer<Info>(
                  builder: (ctx, info, _) => IconButton(
                    icon: Icon(
                      info.items[index].isFavourite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: info.items[index].isFavourite
                          ? Colors.red
                          : Colors.black,
                    ),
                    onPressed: () {
                      info.updateFavourite(index);
                    },
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
