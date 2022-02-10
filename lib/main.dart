import 'package:flutter/material.dart';
import 'package:youtube_api/pages/home_page.dart';
import 'package:youtube_api/pages/login_page.dart';
import 'package:youtube_api/utils/routes.dart';
import 'package:youtube_api/utils/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
    
      initialRoute: "/",
      routes: {
        "/": (context) => Homepage(), 
        MyRoutes.homeRoute: (context) => Homepage(), 
        MyRoutes.loginRoute: (context) => Loginpage(), 

      },

      
    );
  }
}

