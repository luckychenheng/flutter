import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  @override
  BookState createState() => new BookState();
}

class BookState extends State<Book> {
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
          title: new Text("赚赚"),
        ),
        body: new Center(
          child: new Text('Hello Movie'),
        ),
      ),
    );
  }
}