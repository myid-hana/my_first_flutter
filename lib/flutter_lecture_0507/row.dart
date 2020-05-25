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
        title: Text('Row'),
        //수평 방향으로 위젯들을 나란히 배치하는 위젯
      ),
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.center, //바디의 자식 컨텐츠 정렬, 가운데 정렬
        //mainAxisAlignment: MainAxisAlignment.spaceBetween, //왼쪽, 가운데, 오른쪽 정렬
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  //각각 동일하게 정렬
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.redAccent,
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
            color: Colors.lightGreen,
            margin: const EdgeInsets.all(8.0),
          )
        ],
      ),
    );
  }
}
