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
          title: Text('Padding'),
          //안쪽 여백을 표현할 때 사용하는 위젯
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            color: Colors.deepPurpleAccent,
          ),
        ),
      ),
    );
  }
}
