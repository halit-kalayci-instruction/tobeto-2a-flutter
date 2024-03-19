import 'package:flutter/material.dart';
import 'package:intro/widgets/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  // Dosyadan veri çek
  // Soruları tek tek ekranda göster.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Soru gelicek.."),
              AnswerButton(
                  answerText: "Cevap 1",
                  onClick: () {
                    print("Cevap 1 tıklandı.");
                  }),
              AnswerButton(
                  answerText: "Cevap 2",
                  onClick: () {
                    print("Cevap 2 tıklandı.");
                  }),
              AnswerButton(
                  answerText: "Cevap 3",
                  onClick: () {
                    print("Cevap 3 tıklandı.");
                  }),
              AnswerButton(
                  answerText: "Cevap 4",
                  onClick: () {
                    print("Cevap 4 tıklandı.");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
// Snippet