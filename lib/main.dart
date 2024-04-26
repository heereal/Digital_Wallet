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
          backgroundColor: Color(0xFF181818), // 커스텀 컬러
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Total Banlance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                  ),
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 40,
                        ),
                        child: Text(
                          'Transfer',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
