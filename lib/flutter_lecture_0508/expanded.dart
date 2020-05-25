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
          title: Text('Expanded'),
          //자식 위젯의 크기를 원하는 비율로 확장시켜주는 위젯.
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.lightGreen,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
