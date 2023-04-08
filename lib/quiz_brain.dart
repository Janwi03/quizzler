import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _questionBank = [
    Questions(q: 'bananas are berries', a: true),
    Questions(q: 'Giraffes say "moo"', a: true),
    Questions(q: 'Pigs are dumb', a: false),
    Questions(q: 'The maximum length for a video posted on TikTok is 30 seconds', a: false),
    Questions(q: 'Intestine is the largest organ in a human body', a: false),
    Questions(q: 'Harry Potter’s first flying broomstick is called Firebolt', a: false),
  ];

  void nextQuestion() {
    if(_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText () {
    return _questionBank[_questionNumber].questionText;
  }
  bool getCorrectAnswer () {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}