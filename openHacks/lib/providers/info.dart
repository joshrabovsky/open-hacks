import 'package:flutter/material.dart';

class CovidItem {
  final int index;
  final String websiteURL;
  final String imageURL;
  bool isFavourite;

  CovidItem({this.index, this.websiteURL, this.imageURL, this.isFavourite});
}

class Info with ChangeNotifier {
  List<CovidItem> _items = [
    CovidItem(
      index: 0,
      imageURL: "https://media.giphy.com/media/UTesoPxNXJ8VS65bf1/giphy.gif",
      websiteURL: null,
      isFavourite: false,
    ),
    CovidItem(
      index: 1,
      imageURL: "https://media.giphy.com/media/LrYD6AWSt3CC5l1zg6/giphy.gif",
      websiteURL: "https://hack.theopencode.org/",
      isFavourite: false,
    ),
    CovidItem(
      index: 2,
      imageURL: "https://media.giphy.com/media/Rko2bnekLUz5MQaFQy/giphy.gif",
      websiteURL: "https://hack.theopencode.org/",
      isFavourite: false,
    ),
    CovidItem(
      index: 3,
      imageURL:
          "https://media.giphy.com/media/UVNT6DrsoezPZ6ZO9p/giphy.gif",
      websiteURL: "https://hack.theopencode.org/",
      isFavourite: false,
    ),
    CovidItem(
      index: 4,
      imageURL:
          "https://previews.123rf.com/images/kongvector/kongvector1906/kongvector190603442/124727561-finger-surgical-mask-in-a-cartoon-wallet-vector-illustration.jpg",
      websiteURL: "https://hack.theopencode.org/",
      isFavourite: false,
    ),
  ];

  List<CovidItem> get items {
    return [..._items];
  }

  void updateFavourite(int index) {
    CovidItem item = _items.firstWhere((item) => item.index == index);
    item.isFavourite = !item.isFavourite;
    notifyListeners();
  }

  List<CovidItem> get favourites {
    return _items.where((item) => item.isFavourite).toList();
  }
}
