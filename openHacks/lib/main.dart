import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/info.dart';
import './screens/mask_list_screen.dart';
import './screens/favourites_screen.dart';
import './screens/videos_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Info(),
      child: MaterialApp(
        title: 'Covid-19',
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        home: MaskListScreen(),
        routes: {
          FavouritesScreen.routeName : (ctx) => FavouritesScreen(),
        },
      ),
    );
  }
}
