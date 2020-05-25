import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
        //Container: 화면 전체를 포함하는 의미론적 공간
        //Column: 수직 방향으로 위젯들을 나란히 배치하는 위젯
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.lightBlueAccent,
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.lightGreenAccent,
            margin: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
