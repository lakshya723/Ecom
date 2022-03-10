import 'package:flutter/material.dart';
import 'package:youtube_api/models/catalog.dart';
import 'package:youtube_api/widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ICE CREAME APP"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(item: CatalogModel.items[index]);
          },
        ),
      ),
    );
  }
}