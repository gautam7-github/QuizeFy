import 'package:quizefy_app/score_screen.dart';
import 'package:get/get.dart';
import 'question.dart';
import 'dart:math';

class QuizBrain {
  int _currentQuestion = 0;
  int score = 0;
  List<Question> _questions = [
    Question(
      'Some cats are actually allergic to humans',
      true,
    ),
    Question(
      'You can lead a cow down stairs but not up stairs.',
      false,
    ),
    Question(
      'Approximately one quarter of human bones are in the feet.',
      true,
    ),
    Question(
      'A slug\'s blood is green.',
      true,
    ),
    Question(
      'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
      true,
    ),
    Question(
      'It is illegal to pee in the Ocean in Portugal.',
      true,
    ),
    Question(
      'No piece of square dry paper can be folded in half more than 7 times.',
      false,
    ),
    Question(
      'In London, UK,if you happen to die in the House of Parliament,you are technically entitled to a state funeral, because the building is considered too sacred a place.',
      true,
    ),
    Question(
      "Turkeys were worshipped in the Mayan Civilsization",
      true,
    ),
    Question(
      "Rum is the oldest spirit in the world.",
      true,
    ),
    Question(
      "A hair of polar bear\'s fur is white",
      false,
    ),
    Question(
      "The Spoon was invented in 1000 B.C.",
      true,
    ),
    Question(
      'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
      false,
    ),
    Question(
      'The total surface area of two human lungs is approximately 70 square metres.',
      true,
    ),
    Question(
      'Google was originally called \"Backrub\".',
      true,
    ),
    Question(
      'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
      true,
    ),
    Question(
      'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
      true,
    ),
    Question(
      "You can get a license to legally hunt unicorns in Michigan.",
      true,
    ),
    Question(
      "Chewing gum can boost your concentration.",
      true,
    ),
    Question(
      "New Zealand has more sheep than people.",
      true,
    ),
    Question(
      "Dry cell batteries are not allowed in cabin baggage.",
      true,
    ),
    Question(
      "Milk is 87% water.",
      true,
    ),
    Question(
      "A regular internet user has three social media accounts.",
      false,
    ),
    Question(
      "Bananas were first imported to England in 1888",
      true,
    ),
    Question(
      "YouTube was founded on Valentine’s Day.",
      true,
    ),
    Question(
      "Johnny Depp has a Jack tattoo in honor of the Pirates of the Caribbean movie series.",
      false,
    ),
    Question(
      "The ostrich has the largest eye in the world.",
      false,
    ),
    Question(
      "The Sahara desert spans twelve different countries.",
      true,
    ),
  ];
  QuizBrain() {
    _questions.shuffle(Random());
  }
  String getQuestionText() {
    return _questions[_currentQuestion].questionText;
  }

  bool getCorrectAnswer() {
    return _questions[_currentQuestion].answer;
  }

  int getQuestionsLength() {
    return _questions.length;
  }

  void nextQuestion() async {
    if (_currentQuestion >= _questions.length - 1) {
      await Future.delayed(Duration(seconds: 2), () {
        Get.to(ScoreScreen(score, _questions.length));
        reset();
      });
    }

    if (_currentQuestion < _questions.length - 1) {
      _currentQuestion++;
    }
  }

  void reset() {
    _currentQuestion = 0;
    _questions.shuffle(Random());
    score = 0;
  }

  bool isFinished() {
    if (_currentQuestion >= _questions.length - 1) {
      return true;
    }
    return false;
  }
}
