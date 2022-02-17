import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:youtube_api/models/catalog.dart';
import 'package:youtube_api/pages/home_detail_page.dart';
import 'package:youtube_api/utils/themes.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                    item: item,
                  ))),
      child: VxBox(
          child: Row(
        children: [
          Image.network(item.image).box.rounded.p8.make().p8().w40(context),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              item.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
              item.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: ["\$${item.price}".text.bold.xl.make(), AddToCart()],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      )).white.square(100).make().p16(),
    );
  }
}

class AddToCart extends StatefulWidget {
  const AddToCart({
    Key key,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            MyTheme.darkBluishColor,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: "Buy".text.make(),
    );
  }
}



 /*  Card(
        child: ListTile(
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trail                               ing: Text("/"),
        ),
      ); */