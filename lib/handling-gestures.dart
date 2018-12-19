import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Handling Gestures'),
      ),
      body: GestureDetector(
        onTap: () {
          // 버튼 누르는 효과가 추가되면 더 좋음
          // 그러나 어차피 Button 위젯 쓸 것이므로 생략
          var current = new DateTime.now();
          print('MyButton was tapped! $current');
        },
        child: Container(
          height: 36.0,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.lightGreen[500],
            // 버튼 처럼 보이도록 elevation 효과 추가
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 4.0,
                offset: Offset(2.0, 2.0),
              ),
            ],
          ),
          child: Center(
            child: Text('Engage'),
          ),
        ),
      ),
    );
  }
}
