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
          title: Text('Align'),
          //자식 위젯의 정렬 방향을 정할 수 있는 위젯.
        ),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.deepPurpleAccent,
          ),
        ),
      ),
    );
  }
}
