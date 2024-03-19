import 'package:flutter/material.dart';
import 'package:intro/data/question_data.dart';
import 'package:intro/widgets/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

// AppBar
// Flutter'da sayfalar arası geçiş yöntemleri ve birbirlerine göre avantaj/dezavantajları ve kullanım oranları. (MEDIUM)
class _QuestionsScreenState extends State<QuestionsScreen> {
  // Dosyadan veri çek
  // Soruları tek tek ekranda göster.
  int currentQuestionIndex = 0; // O an kaçıncı soruda olduğumuz.
  bool resultPage = false;
  void answer() {
    // Cevap verildiğinde verilen cevapları hafızada tut.
    // Sonuç ekranını tasarlayınız.
    setState(() {
      if (currentQuestionIndex < questions.length - 1)
        currentQuestionIndex++;
      else
        resultPage = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(currentQuestion.question),
              // Soruların cevap sayısı 3 ile 6 arasında değişebilir, cevap butonlarını dinamik bir şekilde gelecek
              // şekilde kodlayınız..
              AnswerButton(
                  answerText: currentQuestion.answers[0],
                  onClick: () {
                    answer();
                  }),
              AnswerButton(
                  answerText: currentQuestion.answers[1],
                  onClick: () {
                    answer();
                  }),
              AnswerButton(
                  answerText: currentQuestion.answers[2],
                  onClick: () {
                    answer();
                  }),
              AnswerButton(
                  answerText: currentQuestion.answers[3],
                  onClick: () {
                    answer();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
// Snippet