import 'package:flutter/material.dart'; //material은 구글, 안드로이드 디자인. 기본적으로 항상 설치해야하는 패키지

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lecture', //안써줘도 영향은 없지만 타이틀은 써줍시다.
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
          //글자를 입력받는 위젯. InputDecoration 클래스와 함께 사용하면 힌트 메시지나 외곽선 등을 꾸밀 수 있습니다.
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(),
                SizedBox(height: 50), //칸을 띄워주는데 마진을 쓰는 게 아니라 또 박스를 만들어 넣는 것을 많이 씀.
                TextField(
                  decoration: InputDecoration(
                    labelText: '여기에 입력해 주세요.',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: '여기도 입력해 보세요.',
                    border: OutlineInputBorder(),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}



