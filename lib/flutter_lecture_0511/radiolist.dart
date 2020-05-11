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

enum Gender{MAN, WOMAN}   //enum : 열거형 변수

class _MyHomePageState extends State<MyHomePage> {

  Gender _gender = Gender.MAN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Radio Box'),
          //선택 그룹 중 하나를 선택할 때 사용하는 위젯.
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('남자'),
                  leading : Radio(
                    value: Gender.MAN,
                    groupValue: _gender,
                    onChanged: (value){
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('여자'),
                  leading : Radio(
                    value: Gender.WOMAN,
                    groupValue: _gender,
                    onChanged: (value){
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                ),
                RadioListTile(
                  title: Text('Man'),
                  value: Gender.MAN,
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
                RadioListTile(
                  value: Gender.WOMAN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}



