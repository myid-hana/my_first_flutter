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

  final _valueList = ['First', 'Second', 'Third'];
  var _selectedValue = 'First';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Drop Down Button'),
        //
      ),
      body: DropdownButton(
        value: _selectedValue,
        items: _valueList.map(  //배열로 묶여있는 변수를 하나하나 글자로 꺼내려면 맵으로 묶어서 tolist로 빼줘야 함.
                (value){
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }
        ).toList(),
        onChanged: (value){
          setState(() {
            _selectedValue = value;
          });
        },
      ),
    );
  }
}



