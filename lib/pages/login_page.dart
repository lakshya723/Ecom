import 'package:flutter/material.dart';
import 'package:youtube_api/utils/routes.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: ElevatedButton(
          child: Text("login"),
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
        ),
      ),
    );
  }
}
