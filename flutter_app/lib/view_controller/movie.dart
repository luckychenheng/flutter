import 'package:flutter/material.dart';

class Movie extends StatefulWidget {
  @override
  MovieState createState() => new MovieState();
}

class MovieState extends State<Movie> {
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
          title: new Text("首页"),
        ),
        body: new Center(
          child: new Text('Hello Movie'),
        ),
      ),
    );
  }
}