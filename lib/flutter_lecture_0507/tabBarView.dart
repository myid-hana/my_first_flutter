import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyFirstApp(),
    );
  }
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //tab의 갯수
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Tab Bar View'), //여러 페이지와 탭을 연동시켜주는 위젯
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.tag_faces)),
              Tab(text: 'Menu2'),
              Tab(icon: Icon(Icons.info)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              color: Colors.deepPurpleAccent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.brown,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.lime,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
