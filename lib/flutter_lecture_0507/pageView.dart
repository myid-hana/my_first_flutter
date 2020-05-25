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
        title: Text('Page View'),
        //여러 페이지를 좌우로 슬라이드하여 넘길 수 있도록 해주는 위젯
        //page view 보다는 주로 누르면 넘어가는 방식의 tabBarView를 쓰거나 page를 이동하는 방식을 더 많이 쓴다.
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.lightBlueAccent,
          ),
          Container(
            color: Colors.lightGreen,
          ),
          Container(
            color: Colors.lime,
          ),
        ],
      ),
    );
  }
}
