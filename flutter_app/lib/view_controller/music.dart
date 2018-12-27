import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  @override
  MusicState createState() => new MusicState();
}

class MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
          primaryColor: Colors.grey[100],
          primaryColorBrightness: Brightness.light,
        ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("我的"),
        ),
        body: new Center(
          child: new Text('Hello Movie'),
        ),
      ),
    );
  }
}