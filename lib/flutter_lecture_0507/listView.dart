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
        title: Text('List View'),
        //리스트를 표시하는 위젯
        //singleChildListView와 Listbody의 조합과 동일한 효과를 내지만 좀 더 리스트에 최적화된 위젯
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            //leading. 타일 앞에 표시되는 위젯. 참고로 타일 뒤에는 trailing 위젯으로 사용 가능
            leading: Icon(Icons.home),
            title: Text('Home'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
          ListTile(
            //leading. 타일 앞에 표시되는 위젯. 참고로 타일 뒤에는 trailing 위젯으로 사용 가능
            leading: Icon(Icons.event),
            title: Text('Event'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
          ListTile(
            //leading. 타일 앞에 표시되는 위젯. 참고로 타일 뒤에는 trailing 위젯으로 사용 가능
            leading: Icon(Icons.camera),
            title: Text('Camera'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
