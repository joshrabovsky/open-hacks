import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/mask_item.dart';
import '../providers/info.dart';
import '../widgets/my_drawer.dart';

class MaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Info>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19'),
      ),
      body: ListView.builder(
        itemCount: info.items.length,
        itemBuilder: (context, index) => MaskItem(
          index: index,
          website: info.items[index].websiteURL,
          image: info.items[index].imageURL,
          isFavouriteScreen: false,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
