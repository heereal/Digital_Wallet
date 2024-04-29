import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  // runApp()은 위젯을 파리미터로 받음
  runApp(const MyApp());
}

// 상속을 통해 클래스를 위젯으로 만듦 - build 메소드 필수
// StatelessWidget은 화면에 무언가를 띄워주는 역할만을 함
// Root Widget -> MaterialApp(구글) / CupertinoApp(iOS) 두 개 중 하나를 return 해야 함
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override // 부모 클래스에 있는 메소드를 override함
  // build 메소드는 Widget을 return함
  Widget build(BuildContext context) {
    return MaterialApp(
      // 모든 화면은 Scaffold를 가짐 (화면의 구조를 제공)
      home: Scaffold(
        backgroundColor: const Color(0xFF181818), // 커스텀 컬러
        // 스크롤 가능한 위젯
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
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
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Total Banlance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                  ),
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF202123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        )),
                    Text('View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  amount: '6 428',
                  code: 'EUR',
                  icon: Icons.euro_symbol_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: const Offset(0, -18),
                  child: const CurrencyCard(
                    name: 'Dollar',
                    amount: '55 622',
                    code: 'USD',
                    icon: Icons.attach_money_rounded,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -36),
                  child: const CurrencyCard(
                    name: 'Bitcoin',
                    amount: '9 785',
                    code: 'BTC',
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
