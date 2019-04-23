import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp());
}
/*
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
*/


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title:"My App",
      home:new HomePage(),
      theme: new ThemeData(primaryColor: Colors.black,
        primaryColorBrightness: Brightness.dark,
        brightness: Brightness.dark,
        primarySwatch: Colors.green
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}





class _HomePageState extends State<HomePage> {

   String mytext="Hello World";
  void _ChangeText()
  {
      setState(() {
        if(mytext.startsWith('H'))
            mytext="Welcome to my app";
        else
            mytext="Hello World";
      });

  }


  Widget _bodyWidget()
  {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            new Text(mytext,style: new TextStyle(color: Colors.white,fontSize: 30.0),),
//            new RaisedButton(
//                child: new Text("Button",style: new TextStyle(color: Colors.white,fontSize: 20.0),),
//                onPressed: _ChangeText,
//                color: Colors.red,
//
//
//            )

          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text("Home Page"),

    ),
    body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.red,
          child: new Icon(Icons.add),
          onPressed: _ChangeText,

      ),
    );
  }
}


