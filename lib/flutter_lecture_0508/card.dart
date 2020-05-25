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
          title: Text('Card'),
          //카드 형태의 모양을 제공하는 위젯. 크기는 자식 엘리먼트에 따릅니다.
        ),
        body: Container(
          color: Colors.lightGreen,
          child: Center(
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Container(
                height: 200,
                width: 200,
                //color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
