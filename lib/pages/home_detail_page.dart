import 'package:flutter/material.dart';
import 'package:youtube_api/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
class HomeDetailPage extends StatelessWidget {
  final Item item;

  const HomeDetailPage({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(),
      body: Column(children: [
        Image.network(item.image),
      ],).p32(),
    );
  }
}
