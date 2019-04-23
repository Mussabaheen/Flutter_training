import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title:"My App",
    home: new Scaffold(
      appBar: new AppBar(title: new Text("Flutter App")
        ,

      ),
      body: new Center(child: new Text("Mussabaheen Malik")),
    ),
    );
  }
}

