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
          title: Text('Center'),
          //엘리먼트를 좌우상하 중앙으로 보내는 위젯.
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }
}
