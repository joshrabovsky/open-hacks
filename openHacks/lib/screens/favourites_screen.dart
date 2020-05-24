import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/my_drawer.dart';
import '../providers/info.dart';
import '../widgets/mask_item.dart';

class FavouritesScreen extends StatelessWidget {

  static const routeName = '/favourties-screen';

  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Info>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourites"),
      ),
      drawer: MyDrawer(),
      body: ListView.builder(
        itemCount: info.favourites.length,
        itemBuilder: (ctx, index) => MaskItem(
          index: info.favourites[index].index,
          website: info.favourites[index].websiteURL,
          image: info.favourites[index].imageURL,
          isFavouriteScreen: true,
        ),
      ),
    );
  }
}