class Question {
  String questionText;
  String choiceA;
  String choiceB;
  String choiceC;
  String choiceD;
  int correctAnswer;

  Question({
    required this.questionText,
    required this.choiceA,
    required this.choiceB,
    required this.choiceC,
    required this.choiceD,
    required this.correctAnswer,
  });
}

class QuizBrain {
  int _questionNumber = 0;
  

  List<Question> _questionBank = [
    Question(
      questionText: 'What is the default programming language for developing iOS apps?',
      choiceA: 'Java',
      choiceB: 'Swift',
      choiceC: 'Kotlin',
      choiceD: 'Objective',
      correctAnswer: 1,
    ),
    Question(
      questionText: 'Which of the following is not a mobile development platform?',
      choiceA: 'Flutter',
      choiceB: 'React Native',
      choiceC: 'Xamarin',
      choiceD: 'Angular',
      correctAnswer: 3,
    ),
    Question(
      questionText: 'Which mobile development platform was developed by Google?',
      choiceA: 'React Native',
      choiceB: 'Xamarin',
      choiceC: 'Flutter',
      choiceD: 'Ionic',
      correctAnswer: 2,
    ),
    Question(
      questionText: 'Which of the following is not a mobile development tool?',
      choiceA: 'Android Studio',
      choiceB: 'Xcode',
      choiceC: 'Visual Studio',
      choiceD: 'Photoshop',
      correctAnswer: 3,
    ),
    Question(
      questionText: 'Which of the following is not a feature of mobile app development?',
      choiceA: 'Cross-platform compatibility',
      choiceB: 'Push notifications',
      choiceC: 'Backend development',
      choiceD: 'Virtual reality integration',
      correctAnswer: 3,
    ),
  ];

  void shuffleQuestions() {
    _questionBank.shuffle();
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getChoiceA() {
    return _questionBank[_questionNumber].choiceA;
  }

  String getChoiceB() {
    return _questionBank[_questionNumber].choiceB;
  }

  String getChoiceC() {
    return _questionBank[_questionNumber].choiceC;
  }

  String getChoiceD() {
    return _questionBank[_questionNumber].choiceD;
  }

  int getQuestionAnswer() {
    return _questionBank[_questionNumber].correctAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber == _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
