import 'package:flutter/material.dart';

import 'package:flutter_app/view_controller/movie.dart';
import 'package:flutter_app/view_controller/book.dart';
import 'package:flutter_app/view_controller/music.dart';

class LuckyApp extends StatefulWidget {

  @override
  LuckyAppState createState() => new LuckyAppState();
}

class LuckyAppState extends State<LuckyApp>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.grey[100],
        primaryColorBrightness: Brightness.light,
      ),
      home: new Scaffold(
        body: new TabBarView(
          controller: controller,
          children: [
            new Movie(),
            new Book(),
            new Music(),
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.white,
          child: new TabBar(
            controller: controller,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black,
            indicatorWeight: 1,
            indicatorColor: Colors.white,
            tabs: [
              new Tab(
                text: "首页1",
                icon: new Icon(
                  Icons.account_box,
                ),
              ),
              new Tab(
                text: "赚赚",
                icon: new Icon(
                  Icons.account_box,
                ),
              ),
              new Tab(
                text: "我的",
                icon: new Icon(
                  Icons.account_box,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}