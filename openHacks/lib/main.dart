import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './screens/mask_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: MaskList(),
    );
  }
}


