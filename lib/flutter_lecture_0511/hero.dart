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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
        //화면 전환 시 자연스럽게 연결되는 애니메이션을 지원하는 위젯. 이전화면으로 돌아갈 때도 자연스러운 애니메이션이 적용됩니다.
      ),
      body: Center(
        child: GestureDetector( //클릭을 했을 때 클릭을 감지해주는 것.
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroDetailPage()),  //Material을 적어주면 루트가 안드로이드 디자인에 맞게 넘어간다.
            );
          },
          child: Hero(  //tag 많이 씀.
            tag: 'image', //Hero에 사용할 파일 종류 쓰는 ?
            child: Image.asset('assets/product_01.jpg', width: 100, height: 100),
          ),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail'),
      ),
      body: Hero(
        tag: 'image',    //위에 있는 Hero와 값이 같아야 한다.
        child: Image.asset('assets/product_01.jpg'),
      ),
    );
  }
}

