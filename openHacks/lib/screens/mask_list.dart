import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/mask_item.dart';

class MaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => MaskItem(),
      ),
    );
  }
}