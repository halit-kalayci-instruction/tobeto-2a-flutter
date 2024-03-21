import 'package:flutter/material.dart';
import 'package:intro/data/question_data.dart';
import 'package:intro/result_page.dart';
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
  int rightAnswerCount = 0, wrongAnswercount = 0;
  void answer(String answer) {
    // Cevap verildiğinde verilen cevapları hafızada tut.
    // Sonuç ekranını tasarlayınız.
    bool isTrue = answer == questions[currentQuestionIndex].answers[0];
    isTrue ? rightAnswerCount++ : wrongAnswercount++; // ternary operator
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
    // List<String> shuffledQuestions = currentQuestion.answers; // immutable // referans
    List<String> shuffledQuestions = List.of(currentQuestion.answers);
    shuffledQuestions.shuffle();

    if (resultPage) {
      return ResultPage(
          rightAnswerCount: rightAnswerCount,
          wrongAnswerCount: wrongAnswercount);
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(currentQuestion.question),
              ...shuffledQuestions.map((question) => AnswerButton(
                  answerText: question,
                  onClick: () {
                    answer(question);
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
// Snippet
// Discord Pairler