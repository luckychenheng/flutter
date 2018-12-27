import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  @override
  BookState createState() => new BookState();
}

class BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("电影"),
        ),
        body: new Center(
          child: new Text('Hello Movie'),
        ),
      ),
    );
  }
}