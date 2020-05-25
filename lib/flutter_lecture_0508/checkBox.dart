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

  var _isChecked = false;
  var _isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Check Box'),
          //설정 화면 등에 많이 사용하는 체크박스. 스위치 버튼을 표현하는 위젯.
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: (value){
                    setState(() {
                      _isChecked = value;
                    });
                  },
                ),
                SizedBox(height: 40.0),
                Switch(
                  value: _isSwitch,
                  onChanged: (value){
                    setState(() {
                      _isSwitch = value;
                    });
                  },
                )
              ],
            ),
          ),
        )
    );
  }
}



