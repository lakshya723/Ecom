import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_api/models/catalog.dart';
import 'package:youtube_api/utils/routes.dart';
import 'package:youtube_api/widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
 
class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items = List.from(productData)
    .map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
      
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ICE CREAME APP"),
      ),
      floatingActionButton: FloatingActionButton(autofocus:true ,
      onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
      child: Icon(CupertinoIcons.cart),),
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
