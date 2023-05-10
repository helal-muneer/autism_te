import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int correctAnswerCount = 0;

  final List<Question> questions = [
    Question(
      ' يتصرف الطفل وكأنه لا يسمع؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      1,
    ),
    Question(
      'لا يهتم بمن حوله؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      1,
    ),
    Question(
      ' لا يحب ان يحتضنه احد؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      0,
    ),
    Question(
      'هل تحب اللعب بمفردك دائمًا؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      'يقاوم الطرق التقليدية في التعليم؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      'لا يخاف من الخطر؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      ' إما نشاط زائد ملحوظ او خمول مبالغ فيه؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      '  لا يلعب مع الاطفال الآخرين؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      ' ضحك واستثارة في اوقات غير مناسبة؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      ' بكاء او نوبات غضب شديدة ولاسباب غير معروفة؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      ' يقاوم التغير في الروتين؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      ' لا ينظر في عين من يكلمه؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      ' يستمتع بلف الاشياء؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      ' لا يستطيع التعبير عن الالم؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      ' تعلق غير طبيعي بالاشياء؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      ' فقدان الخيال والابداع في طريقة اللعب؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      '  وجود حركات متكررة وغير طبيعية مثل الرفرفة باليد وهز الرأس؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
    Question(
      ' قصور او غياب في القدرة على الاتصال والتواصل؟',
      ['نعم', 'لا', 'بعض الاحيان'],
      2,
    ),
  ];

  void handleAnswerSelected(int selectedAnswerIndex) {
    if (selectedAnswerIndex ==
        questions[currentQuestionIndex].correctAnswerIndex) {
      setState(() {
        correctAnswerCount++;
      });
    }
    goToNextQuestion();
  }

  void goToNextQuestion() {
    setState(() {
      currentQuestionIndex = (currentQuestionIndex + 1) % questions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Quiz'),
        centerTitle: true,
        actions: [
          Center(

            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                '${currentQuestionIndex + 1}/${questions.length}',
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.brown.shade400]
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/y.jpg'),
                  backgroundColor: Colors.greenAccent,
                  radius: 70,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  questions[currentQuestionIndex].text,
                  style: const TextStyle(fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              ),
              ...questions[currentQuestionIndex]
                  .answerOptions
                  .map(
                    (option) => AnswerOption(
                  text: option,
                  onPressed: () => handleAnswerSelected(
                      questions[currentQuestionIndex]
                          .answerOptions
                          .indexOf(option)),
                ),
              )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}

class Question {
  final String text;
  final List<String> answerOptions;
  final int correctAnswerIndex;

  Question(this.text, this.answerOptions, this.correctAnswerIndex);
}

class AnswerOption extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AnswerOption({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        width: 110,
        height: 40,

        child: Container(
          child: ElevatedButton(

            onPressed: onPressed,
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
