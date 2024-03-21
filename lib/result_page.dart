import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.rightAnswerCount,
      required this.wrongAnswerCount});
  final int rightAnswerCount;
  final int wrongAnswerCount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Toplam Doğru Sayısı: $rightAnswerCount"),
          Text("Toplam Yanlış Sayısı: $wrongAnswerCount")
        ],
      )),
    );
  }
}
