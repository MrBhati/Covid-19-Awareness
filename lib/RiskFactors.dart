import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomeScren.dart';
import 'ResultScreen.dart';
import 'quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:fluttertoast/fluttertoast.dart';

QuizBrain quizBrain = QuizBrain();

class RiskFactors extends StatefulWidget {
  @override
  _RiskFactorsState createState() => _RiskFactorsState();
}

class _RiskFactorsState extends State<RiskFactors> {
  List<Icon> scoreKeeper = [];
  int totalCorrect = 0;
  int score = 0;
  int questionCount = 0;
  String status;
  String img;
  String interpretation;

  void addPoint(bool answer) {
    questionCount = questionCount + 1;
    if (answer == true) {
      score = score + quizBrain.getPoint();
      print(score);
    }

    setState(() {
      if (quizBrain.isFinished() == true) {
        print(score);
        if (score >= 0 && score <= 2) {
          status = "Low Level";
          img = "assets/images/low.png";
          interpretation =
              "1. Stay home and take care of yourself in home isolation\n2. Laboratory tests and imaging are optional (and as per your physician’s advise)\n3. COVID 19 testing may be required at your physician’s advise\n4. Monitor your symptoms and get medical attention if your situation worsens";
        } else if (score >= 3 && score <= 5) {
          status = "Meduim Level";
          img = "assets/images/medium.png";
          interpretation =
              "1. CONSULT A PHYSICIAN and start home isolation immediately\n2. Laboratory tests and imaging may be needed as per your physician's advise\n3. COVID 19 testing may be required at your physician’s advise\n4. Monitor your symptoms and get medical attention if your situation worsens";
        } else if (score >= 6 && score <= 12) {
          status = "High Level";
          img = "assets/images/high.png";
          interpretation =
              "1. Seek immediate medical attention and get yourself tested\n2. Please visit a physician as there may be a requirement for further care\n3. COVID 19 testing may be needed at your physician’s advise.\n4. Prevention and Precautions SEE BELOW.\n5. Laboratory tests and imaging may be needed as per your physician's advise.\n6. Monitor your symptoms and isolate yourself.";
        } else {
          status = "Risk Level";
          img = "assets/images/risk.png";
          interpretation =
              "1. Seek immediate medical attention and get yourself tested\n2. Please visit a physician as there may be a requirement for further care\n3. COVID 19 testing may be needed at your physician’s advise.\n4. Prevention and Precautions SEE BELOW.\n5. Laboratory tests and imaging may be needed as per your physician's advise.\n6. Monitor your symptoms and isolate yourself.";
        }

        print("----------------- End Test -------------");

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => ResultScreen(
                  status: status,
                  interpretation: interpretation,
                  score: score,
                  img: img)),
        );

        //   Alert(
        //       closeFunction: null,
        //       context: context,
        //       title: "You Are At " + status,
        //       desc: "" + interpretation,
        //       buttons: [
        //         DialogButton(
        //           color: Colors.deepPurple,
        //           child: Text(
        //             "Ok",
        //             style: TextStyle(color: Colors.white, fontSize: 20),
        //           ),
        //           onPressed: () => {
        //            Navigator.push(
        // context,
        // MaterialPageRoute(builder: (context) => ResultScreen()))
        //           },
        //         ),
        //       ]).show();
        quizBrain.reset();
        scoreKeeper = [];
        totalCorrect = 0;
        score = 0;
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    


      onWillPop: () {
          Fluttertoast.showToast(
        msg: "Please complete test.",
        backgroundColor: Colors.black,
        textColor: Colors.white);
      return Future.value(false); // if true allow back else block it
    },
        
      // onWillPop: () {
      //   if (Navigator.canPop(context)) {
      //     Navigator.pop(context);
      //   } else {
      //     SystemNavigator.pop();
      //   }
      // },
      child: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Text(
                      "COVID-19 Risk Assessment Test",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Divider(height: 20.0, indent: 5.0, color: Colors.deepPurple),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    questionCount.toString() + " | 12",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 4,
                child: Container(
                    child: Image.asset(
                  quizBrain.getImage(),
                  height: 800,
                  width: 800,
                ))),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    quizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: SizedBox(
                        width: double.infinity, // match_parent
                        child: RaisedButton(
                          child: Text(
                            "Yes",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {
                            addPoint(true);
                          },
                          color: Colors.green,
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                          splashColor: Colors.grey,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: SizedBox(
                        width: double.infinity, // match_parent
                        child: RaisedButton(
                          child: Text(
                            "No",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {
                            addPoint(false);
                          },
                          color: Colors.red,
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                          splashColor: Colors.grey,
                        )),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  closeApp() {}
}
