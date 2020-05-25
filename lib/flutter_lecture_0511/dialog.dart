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

enum Gender { MAN, WOMAN } //enum : 열거형 변수

class _MyHomePageState extends State<MyHomePage> {
  final _valueList = ['First', 'Second', 'Third'];
  var _selectedValue = 'First';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dialog'),
        //다이알로그는 사용자의 확인을 요구하거나 메시지를 표시하는 용도로 사용되는 위젯.
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(  //입체모양의 버튼.
                child: Text('Show Alert'),
                onPressed: () {
                  showAlertDialog();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog() async {
    //async는 비동기 sync는 동기
    return showDialog(
        context: context,
        barrierDismissible: false, //사용자가 다이얼로그 바깥을 터치하면 닫히지 않음.
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Dialog Box'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Alert Dialog'),
                  Text('Press Ok'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(   //입체모양 없이 text만 나오는 버튼.
                child: Text('OK'),
                onPressed: (){  //버튼을 눌렀을 때 실행되는 함수.
                  Navigator.of(context).pop();  //원래 화면으로 돌려줌. 이전화면으로 돌아가기.
                },
              ),
            ],
          );
        });
  }
}
