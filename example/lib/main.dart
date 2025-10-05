import 'package:cached_network_image_pro/cached_network_image_pro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cached Network Image Pro Example")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// The main widget of Cached Network Image Pro.
          CachedNetworkImageWidget(
            imgUrl:
                "https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg",
            width: 250,
            height: 150,
          ),
        ],
      ),
    );
  }
}
