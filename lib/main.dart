import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YouTube"),
      ),
      body: ListView.builder(

      ),


      drawer: Drawer(),
      
    );
  }
}
class  extends StatefulWidget {
  const ({ Key? key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}