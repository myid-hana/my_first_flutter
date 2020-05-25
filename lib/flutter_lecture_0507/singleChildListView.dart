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

  final items = List.generate(100, (index) => index).toList(); //items는 1부터 100까지 저장된 배열

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Single Child Scroll View'),
        //Column으로 위젯을 나열했을 때 화면 크기를 넘어서면 스크롤이 가능하게 할 수 있는 위젯
        //자동으로 스크롤이 생기지 않습니다.
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ListBody(
            children: items.map((index) => Text('$index')).toList(),
          ),
        ),
      ),
    );
  }
}
