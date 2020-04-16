import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class ResultScreen extends StatefulWidget {

  ResultScreen({this.status, this.interpretation, this.score, this.img});
    final String status;
     final String interpretation;
      final int score;
      final String img;
  
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  


  Color getColor(statusColor) {
    print(statusColor);
   if (statusColor == "Low Level") return Colors.green;
   if (statusColor == "Meduim Level") return Colors.yellow.shade800;
   if (statusColor == "High Level") return Colors.orange.shade800;
   if (statusColor == "Risk Level") return Colors.red.shade800;
  
}

// String getImage(score){
//   print("Findig" );
//   if (score > 0 && score < 2) return "assets/images/low.png";
//    if (score >= 3 && score < 5) return "assets/images/medium.png";
//    if (score >= 6 && score < 12) return "ssets/images/high.png";
//    if (score >= 13 && score < 24) return "assets/images/risk.png";
// }
    @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        } else {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
               Container(
          color: Colors.deepPurple.shade100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {if (Navigator.canPop(context)) {
          Navigator.pop(context);
        } else {
          SystemNavigator.pop();
        }
                },
                child: Container(
                    height: 40,
                    width: 35,
                    margin: const EdgeInsets.only(top: 10, left: 15),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.deepPurple.shade800,
                      size: 30,
                    )),
              ),
              // Container(
              //     margin: const EdgeInsets.only(top: 10, right: 15),
              //     height: 40,
              //     width: 50,
              //     child: Icon(
              //       Icons.menu,
              //       size: 30,
              //     )),
            ],
          ),
        ),
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Text(
                      "COVID-19 Risk Assessment Test Result",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 23,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Divider(height: 20.0, indent: 5.0, color: Colors.deepPurple),
                ],
              ),
            ),

              Expanded(
                flex: 1,
                child: Container(
                    child: Image.asset(widget.img,
                  height: 800,
                  width: 800,
                ))),
                   Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                   widget.status,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                      color: getColor(widget.status),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                 widget.interpretation,
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
            flex: 1,
             child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: SizedBox(
                        width: double.infinity, // match_parent
                        child: RaisedButton(
                          child: Text(
                            "Ok",
                            style: TextStyle(
                              color: Colors.deepPurple.shade700,
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {
                           if (Navigator.canPop(context)) {
          Navigator.pop(context);
        } else {
          SystemNavigator.pop();
        }
                          },
                         color: Colors.deepPurple.shade200,
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                          splashColor: Colors.grey,
                        )),
                  ),
            ),
         
            
          ],
        )),
      ),
    );
  }

}