import 'package:flutter/material.dart';

void main() {
  // runApp()은 위젯을 파리미터로 받음
  runApp(App());
}

// 상속을 통해 클래스를 위젯으로 만듦 - build 메소드 필수
// StatelessWidget은 화면에 무언가를 띄워주는 역할만을 함
// Root Widget -> MaterialApp(구글) / CupertinoApp(iOS) 두 개 중 하나를 return 해야 함
class App extends StatelessWidget {
  @override // 부모 클래스에 있는 메소드를 override함
  // build 메소드는 Widget을 return함
  Widget build(BuildContext context) {
    return MaterialApp(
      // 모든 화면은 Scaffold를 가짐 (화면의 구조를 제공)
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
