import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemNavigator, rootBundle;
import 'dart:async';
import 'dart:convert';
import 'DetailsScreen.dart';
import 'HomeScren.dart';


class PreventionScreen extends StatefulWidget {
  @override
  PreventionScreenState createState() => PreventionScreenState();
}

class PreventionScreenState extends State<PreventionScreen> {
  double _scrollOffsetY = 0;
  String disclaimer;
  List symptomeData;

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/prevention.json');
    print(jsonText);
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
      onWillPop: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        } else {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
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
                                  Text('Prevention',
                                      style: TextStyle(
                                        color: Colors.deepPurple.shade800,
                                        fontSize: 35 - _scrollOffsetY * 0.07,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text('From CORONAVIRUS',
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
                            child: Image.asset('assets/images/sheld.png'),
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
                        child: Opacity(opacity: 0.4,
                        child: Image.asset('assets/images/mask.png',
                         height: 100,))
                         ,
                       )
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
  
  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Scaffold(
  //         body: Column(children: <Widget>[
  //       Container(
  //         color: Colors.deepPurple.shade100,
  //         child: Row(
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: <Widget>[
  //             GestureDetector(
  //               onTap: () {
  //                 Navigator.pushReplacement(context,
  //                     MaterialPageRoute(builder: (context) => HomeScreen()));
  //               },
  //               child: Container(
  //                   height: 30,
  //                   width: 35,
  //                   margin: const EdgeInsets.only(top: 10, left: 15),
  //                   child: Icon(
  //                     Icons.arrow_back,
  //                     color: Colors.deepPurple.shade800,
  //                     size: 30,
  //                   )),
  //             ),
  //             // Container(
  //             //     margin: const EdgeInsets.only(top: 10, right: 15),
  //             //     height: 40,
  //             //     width: 50,
  //             //     child: Icon(
  //             //       Icons.menu,
  //             //       size: 30,
  //             //     )),
  //           ],
  //         ),
  //       ),
  //       Expanded(
  //         child: SingleChildScrollView(
  //           child: Column(
  //             children: <Widget>[
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Colors.deepPurple.shade100,
  //                     borderRadius: BorderRadius.only(
  //                       bottomRight: Radius.circular(20),
  //                     )),
  //                 height: 200,
  //                 // margin: EdgeInsets.only(left: 20),
  //                 // margin: EdgeInsets.only(
  //                 //     bottom: (MediaQuery.of(context).size.height / 1.5), left: 20),
  //                 child: Padding(
  //                   padding: const EdgeInsets.fromLTRB(15, 10, 10, 20),
  //                   child: Row(
  //                       crossAxisAlignment: CrossAxisAlignment.end,
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: <Widget>[
  //                         Padding(
  //                           padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
  //                           child: Column(
  //                               crossAxisAlignment: CrossAxisAlignment.start,
  //                               mainAxisAlignment: MainAxisAlignment.end,
  //                               children: <Widget>[
  //                                 Text('Prevention',
  //                                     style: TextStyle(
  //                                       color: Colors.deepPurple.shade800,
  //                                       fontSize: 35 - _scrollOffsetY * 0.07,
  //                                       fontWeight: FontWeight.bold,
  //                                     )),
  //                                 Padding(
  //                                   padding: const EdgeInsets.only(top: 5),
  //                                   child: Text('Frome CORONAVIRUS',
  //                                       style: TextStyle(
  //                                         color: Colors.deepPurple.shade800,
  //                                         fontSize: 16 - _scrollOffsetY * 0.07,
  //                                         fontWeight: FontWeight.w500,
  //                                       )),
  //                                 )
  //                               ]),
  //                         ),
  //                         Container(
  //                           // padding: EdgeInsets.only(top: 10,right: 30),
  //                           // height: 250,
  //                           // width: 200,
  //                           color: Colors.deepPurple,
  //                           child: Image.asset('assets/images/sheld.png',height:350,
  //                           ),
  //                         )
  //                       ]),
  //                 ),
  //               ),
  //                Padding(
  //                 padding: const EdgeInsets.fromLTRB(5, 10, 5, 4),
  //                 child: Card(
  //                   shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(12.0)),
  //                   elevation: 4.0,
  //                   // color: Colors.deepPurple,
  //                   child: new Container(
  //                     child: Row(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: <Widget>[
  //                           Padding(
  //                             padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
  //                             child: Column(
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 mainAxisAlignment: MainAxisAlignment.end,
  //                                 children: <Widget>[
  //                                   Text('Clean your hands often',
  //                                       style: TextStyle(
  //                                         color: Colors.white,
  //                                         fontSize: 25,
  //                                         fontWeight: FontWeight.bold,
  //                                       )),
  //                                   Padding(
  //                                     padding: const EdgeInsets.only(top: 5),
                                     
  //                                     child: Text('Wash your hands often with soap\nand water for  at least  20 seconds\nespecially ',
  //                                         style: TextStyle(
  //                                           color: Colors.white,
  //                                           fontSize: 14,
  //                                           fontWeight: FontWeight.w500,
  //                                         )
  //                                       )
  //                                   )
  //                                 ]),
  //                           ),
  //                           Container(
  //                             // padding: EdgeInsets.only(top: 10,right: 30),
  //                             height: 100,
  //                             child: Image.asset('assets/images/symptomes.png'),
  //                           )
  //                         ]),
  //                   ),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.fromLTRB(5, 10, 5, 4),
  //                 child: Card(
  //                   shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(12.0)),
  //                   elevation: 4.0,
  //                   color: Colors.deepPurple,
  //                   child: new Container(
  //                     child: Row(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: <Widget>[
  //                           Padding(
  //                             padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
  //                             child: Column(
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 mainAxisAlignment: MainAxisAlignment.end,
  //                                 children: <Widget>[
  //                                   Text('Stay home',
  //                                       style: TextStyle(
  //                                         color: Colors.white,
  //                                         fontSize: 25,
  //                                         fontWeight: FontWeight.bold,
  //                                       )),
  //                                   Padding(
  //                                     padding: const EdgeInsets.only(top: 5),
  //                                     child: Text('Put distance between yourself\nand other people if COVID-19\nis spreading in your community',
  //                                         style: TextStyle(
  //                                           color: Colors.white,
  //                                           fontSize: 14,
  //                                           fontWeight: FontWeight.w500,
  //                                         )),
  //                                   )
  //                                 ]),
  //                           ),
  //                           Container(
  //                             // padding: EdgeInsets.only(top: 10,right: 30),
  //                             height: 100,
  //                             child: Image.asset('assets/images/symptomes.png'),
  //                           )
  //                         ]),
  //                   ),
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     ])),
  //   );
  // }



}
