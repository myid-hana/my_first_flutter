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
        title: Text('Grid View'),
        //리스트를 표시하는 위젯
        //singleChildListView와 Listbody의 조합과 동일한 효과를 내지만 좀 더 리스트에 최적화된 위젯
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            color: Colors.amber,
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.deepPurpleAccent,
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.lightBlueAccent,
            margin: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
