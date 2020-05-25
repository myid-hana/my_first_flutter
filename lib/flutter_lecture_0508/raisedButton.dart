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
        title: Text('Raised Button'),
        //입체감을 가지는 일반적인 버튼 위젯.
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Button',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          color: Colors.lightBlue,
          onPressed: () {}, //이거 안 써주면 색이 적용이 안 됨. 클릭을 위한 버튼이기 때문에 온클릭이벤트를 꼭 써줘야함.
        ),
      ),);
  }
}



