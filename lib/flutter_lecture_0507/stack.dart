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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Stack'),
        //나열된 여러 위젯을 순서대로 겹치게 합니다.
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            color: Colors.lightBlueAccent,
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.deepPurpleAccent,
            margin: const EdgeInsets.all(50.0),
          ),
        ],
      ),
    );
  }
}
