import 'question.dart';

class QuizBrain {

  int _currentQuestion = 0;

  List<Question> _questionBank = [
    Question('Do you have caught?', true,1,'assets/images/cough.png'),
    Question('Do you have cold?', false,1,'assets/images/colds.png'),
    Question('Are you having Diarrhea?', true,1,'assets/images/diarrhea.png'),
    Question('Do you have sore throat?', true,1,'assets/images/sorethrat.png'),
    Question('Are you experiencing MYALGIA or Body Aches?', true,1,'assets/images/bodypan.png'),
    Question('Do you have a headache?', true,1,'assets/images/headache.png'),
    Question('Do you have fever (Temperature 37.8°C and above)?', false,1,'assets/images/feve.png'),
    Question('Are you having difficulty in breathing?',true,2,'assets/images/short.png'),
    Question('Are you experiencing Fatigue?',false,2,'assets/images/fatigue.png'),
    Question('Have you traveled recently during past 14 days?',true,3,'assets/images/travel.png'),
    Question('Do you have a travel history to a COVID-19 INFECTED AREA?', true,3,'assets/images/map.png'),
    Question('Do you have direct contact or is taking care of a positive COVID-19 PATIENT?',true,3,'assets/images/patent.png'),  
  ];

  void nextQuestion() {
    if(_currentQuestion < _questionBank.length - 1) {
      _currentQuestion++;
    } 
  }

  void reset() {
    _currentQuestion = 0;
  }

  bool isFinished() {
    if(_currentQuestion < _questionBank.length - 1) {
      return(false);
    } else {
      return(true);
    }
  }

  String getQuestionText() {
    return(_questionBank[_currentQuestion].questionText);
  }

  bool getQuestionAnswer() {
    return(_questionBank[_currentQuestion].questionAnswer);
  }
  int getPoint() {
    return(_questionBank[_currentQuestion].point);
  }

  String getImage() {
    return(_questionBank[_currentQuestion].image);
  }
}