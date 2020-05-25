import 'package:flutter/material.dart'; //material은 구글, 안드로이드 디자인. 기본적으로 항상 설치해야하는 패키지
import 'dart:math';
//1. nextInt(200) : 0~199 사이의 랜덤값을 정수로 변환
//2. toDouble() : 정수를 실수로 변환(199 => 199.0). 화면비율 계산할 때 실수를 자주 쓴다.

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

  var _size = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
        //container와 쓰임새는 비슷하지만 duration, curve 등의 애니메이션 관련 프로퍼티를 사용할 수 있다.
        //duration은 필수이며 애니메이션되는 데 걸리는 시간이다. curve 클래스에는 미리 정의된 여러 애니메이션 효과가 들어 있다.
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            final random = Random();
            setState(() {
              _size = random.nextInt(200).toDouble() + 100;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _size,
            height: _size,
            child: Image.asset('assets/product_01.jpg'),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}


