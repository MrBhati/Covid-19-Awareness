import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemNavigator, rootBundle;
import 'dart:async';
import 'dart:convert';
import 'DetailsScreen.dart';
import 'HomeScren.dart';

class SymptomsScreen extends StatefulWidget {
  @override
  SymptomsScreenState createState() => SymptomsScreenState();
}

class SymptomsScreenState extends State<SymptomsScreen> {
  double _scrollOffsetY = 0;
    DateTime backbuttonpressedTime;
  String disclaimer;
  List symptomeData;

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/symptoms.json');
    setState(() {
      symptomeData = json.decode(jsonText);
    });
    print(jsonText);
  }

  void initState() {
    super.initState();
    this.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return 
    WillPopScope(
      onWillPop: (){
          if (Navigator.canPop(context)) {
          Navigator.pop(context);
        } else {
          SystemNavigator.pop();
        }
              
      },
      child:Scaffold(
      body: SafeArea(
          child: Column(children: <Widget>[
        Container(
          color: Colors.deepPurple.shade100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                 if (Navigator.canPop(context)) {
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
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade100,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      )),
                  height: 130,
                  // margin: EdgeInsets.only(left: 20),
                  // margin: EdgeInsets.only(
                  //     bottom: (MediaQuery.of(context).size.height / 1.5), left: 20),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 10, 20),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text('Symptoms',
                                      style: TextStyle(
                                        color: Colors.deepPurple.shade800,
                                        fontSize: 35 - _scrollOffsetY * 0.07,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text('of CORONAVIRUS',
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade800,
                                          fontSize: 16 - _scrollOffsetY * 0.07,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  )
                                ]),
                          ),
                          Container(
                            height: 200,
                            child: Image.asset('assets/images/symptomes.png'),
                          )
                        ]),
                  ),
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: symptomeData == null ? 0 : symptomeData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: 
                         GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailsScreen(title: symptomeData[index]['title'], subTitle: symptomeData[index]['subtitle'], image: symptomeData[index]['image'], discription: symptomeData[index]['discription'],  id: symptomeData[index]['id'])));
                },
                       child: Card(
                          
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          elevation: 4.0,
                          color: Colors.deepPurple,
                          child: new Container(

                              child: Stack(
                      alignment: Alignment.topLeft,
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                         child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                               Container(
                                 width: 350,
                                 child: Text(symptomeData[index]['title'],
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 25 ,
                                       fontWeight: FontWeight.bold,
                                     )),
                               ),
                               Container(
                                 width: 300,
                                 padding: const EdgeInsets.only(top: 5),
                                 child: Text(symptomeData[index]['subtitle'],
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 12,
                                       fontWeight: FontWeight.w500,
                                     )),
                               )
                             ]),
                       ),
                       Align(
                        alignment: Alignment.bottomRight,
                         child:  
                          Opacity(opacity: 0.4,
                         child:Image.asset('assets/images/crona.png',
                         height: 80,),
                       ))
                     ]),
                          ),
                        ),
                         ),
                      ),
                    ]);
                  },
                ),
              ],
            ),
          ),
        ),
      ])),
    ));
  }

}
