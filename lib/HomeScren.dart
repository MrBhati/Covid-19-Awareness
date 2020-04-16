import 'package:demoapp/AboutScreen.dart';
import 'package:demoapp/NewsScreen.dart';
import 'package:demoapp/RiskFactors.dart';
import 'package:demoapp/SymptomsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'PreventionScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'ReferenceScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
    DateTime backbuttonpressedTime;
  List<int> generateNumbers() => List<int>.generate(30, (i) => i + 1);
  List<String> events = ['What is it?', 'Symptoms', 'Prevention', 'Risk Test'];
  String name = "";
  @override
  void initState() {
    super.initState();
    // getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return 
    WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: new SafeArea(
      child: SingleChildScrollView(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
                child: new Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade800,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      )),
                  height: 210,
                  child: Column(children: <Widget>[
                    Container(
                        width: double.infinity,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(1, 20, 20, 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text("Welcome ",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400)),
                                ),
                                // Container(
                                //   margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                //   child: ClipRect(
                                //     child: Image.asset(
                                //       'assets/images/user.png',
                                //       height: 40,
                                //       width: 40,
                                //     ),
                                //   ),
                                // ),
                              ]),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      // margin: EdgeInsets.only(
                      //     bottom: (MediaQuery.of(context).size.height / 1.5), left: 20),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text('COVID-19',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 34,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text('CORONAVIRUS',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ))
                                ]),
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 30),
                              child: Image.asset(
                                'assets/images/virus.png',
                                height: 120,
                              ),
                            )
                          ]),
                    ),
                    //    Row(
                    //     children: <Widget>[
                    //       Container(
                    //          child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.stretch,
                    //     children: <Widget>[
                    //       Text(
                    //         "CORONAVIRUS",
                    //         style: TextStyle(
                    //           color: Colors.deepPurple.shade700,
                    //           fontSize: 15,
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(vertical: 3),
                    //         child: Text(
                    //           "2019 - nCOV",
                    //           style: TextStyle(
                    //               color: Colors.deepPurple.shade700,
                    //               fontSize: 30,
                    //               fontWeight: FontWeight.bold),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    //       ),
                    //       Container(
                    //           child: Image.asset(
                    //   'assets/images/vires.png',
                    //   height: 100,
                    //   width: 100,
                    // )
                    //       )
                    //     ],
                    //    )
                  ]),
                ),
              ],
            )),

            ///************************************** GridView buttons ************************ */
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                child: build1(),
              ),
            ),

            ///************************************** Poster ************************ */
            ///
            /////TOTOTOTOTOOTOTOOT DOOOOO--
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            //   child: GestureDetector(
            //     onTap: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => PreventionScreen()));
            //     },
            //     child: Container(
            //       decoration: BoxDecoration(
            //         color: Colors.deepPurple.shade100,
            //         borderRadius: BorderRadius.all(Radius.circular(12)),
            //       ),
            //       width: MediaQuery.of(context).size.width,
            //       child: Padding(
            //         padding: const EdgeInsets.fromLTRB(2, 20, 2, 20),
            //         child: Column(children: <Widget>[
            //           Padding(
            //             padding: const EdgeInsets.symmetric(vertical: 5),
            //             child: Text(
            //               "Create Awareness and safety Poster's",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: Colors.deepPurple.shade700,
            //                 fontSize: 18,
            //                 fontWeight: FontWeight.w600,
            //               ),
            //             ),
            //           ),
            //           Text(
            //             "Create and share poster's to others people's on social media  ",
            //             textAlign: TextAlign.center,
            //             style: TextStyle(
            //               color: Colors.deepPurple.shade700,
            //               fontSize: 10,
            //               fontWeight: FontWeight.w600,
            //             ),
            //           ),
            //         ]),
            //       ),
            //     ),
            //   ),
            // ),

            ///************************************** News Post ************************ */
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                         InkWell(
                        child: Text(
                          "References:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.deepPurple.shade700,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReferenceScreen()),
                          );
                          // Navigator.pushNamed(context, "YourRoute");
                        },
                      ),
                      InkWell(
                        child: Text(
                          "v0.1",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.deepPurple.shade700,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                       
                      ),
                    ],
                  )),


                  ////////*****************************   TO DO FOR NEXT UPDATE   ************************** */
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(8, 2, 8, 10),
            //   child: Container(
            //     height: 210,
            //     child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: numbers.length,
            //         itemBuilder: (context, index) {
            //           return Container(
            //             width: MediaQuery.of(context).size.width * 0.8,
            //             child: Card(
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(12.0)),
            //               elevation: 4.0,
            //               color: Colors.deepPurple,
            //               child: new Container(
            //                 width: MediaQuery.of(context).size.width,
            //                 child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: <Widget>[
            //                       ClipRRect(
            //                         borderRadius: new BorderRadius.only(
            //                           topLeft: const Radius.circular(12.0),
            //                           topRight: const Radius.circular(12.0),
            //                         ),
            //                         child: Container(
            //                           child: Image.asset(
            //                               'assets/images/news_baner.png'),
            //                         ),
            //                       ),
            //                       Padding(
            //                         padding: const EdgeInsets.fromLTRB(
            //                             10, 10, 10, 5),
            //                         child: Text(
            //                             numbers[index].toString() +
            //                                 "Sona develops rapid screening test for coronavirus.",
            //                             style: TextStyle(
            //                               color: Colors.white,
            //                               fontSize: 18,
            //                               fontWeight: FontWeight.w400,
            //                             )),
            //                       ),
            //                       Padding(
            //                         padding:
            //                             const EdgeInsets.fromLTRB(10, 8, 12, 8),
            //                         child: Container(
            //                           child: Row(
            //                               crossAxisAlignment:
            //                                   CrossAxisAlignment.start,
            //                               mainAxisAlignment:
            //                                   MainAxisAlignment.spaceBetween,
            //                               children: <Widget>[
            //                                 Text('11 February 2020',
            //                                     style: TextStyle(
            //                                       color: Colors.white,
            //                                       fontSize: 12,
            //                                       fontWeight: FontWeight.w400,
            //                                     )),
            //                                 Text('BioSpectru Mindia',
            //                                     style: TextStyle(
            //                                       color: Colors.white,
            //                                       fontSize: 12,
            //                                       fontWeight: FontWeight.w400,
            //                                     )),
            //                               ]),
            //                         ),
            //                       ),
            //                     ]),
            //               ),
            //             ),
            //           );
            //         }),
            //   ),
            // ),
          ],
        ),
      ),
    )));
  }

  // getUserInfo() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   //print("///"+prefs.getString('name'));
  //   setState(() {
  //     name = prefs.getString('name') ?? '';
  //   });

  //   //   getUserInfo(){
  //   print('Function on Click on May be later.');
  // }

  Widget build1() {
    return Container(
      margin: EdgeInsets.only(top: 4, bottom: 4),
      child: GridView.count(
        crossAxisCount: 2,
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        // gridDelegate:
        //     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childAspectRatio: 18 / 20,
        children: events.map(
          (title) {
            return GestureDetector(
              child: Card(
                margin: EdgeInsets.all(8),
                color: Colors.deepPurple.shade50,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
                // color: Colors.transparent,
                // margin: const EdgeInsets.only(top:10),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: getCArdByTitle(title),
                ),
              ),
              onTap: () async {
                naviigateToPage(context, title);
              },
            );
          },
        ).toList(),
        // ),
      ),
    );
    // );
  }

  Stack getCArdByTitle(String title) {
    String img = '';
    if (title == 'What is it?') {
      img = 'assets/images/whatis.png';
    } else if (title == 'Symptoms') {
      img = 'assets/images/symptom.png';
    } else if (title == 'Prevention') {
      img = 'assets/images/mask.png';
    } else if (title == 'Risk Test') {
      img = 'assets/images/riskfact.png';
    } 

    return Stack(
      alignment: Alignment.topLeft,
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Align(
          alignment: Alignment.bottomRight,
          child: Container(

            height: 160,
            width: 180,
            child: Image.asset(
              img,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16,0,0,16),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.deepPurple.shade700,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            ),
          ),
        ),
       
      ],
    );
  }

  void naviigateToPage(BuildContext context, String title) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('rescheduleindex');
    if (title == 'What is it?') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AboutScreen()));
    } else if (title == 'Symptoms') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SymptomsScreen()));
    } else if (title == 'Prevention') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PreventionScreen()));
    } else if (title == 'Risk Test') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RiskFactors()));
      // Navigator.push(context, MaterialPageRoute(builder: (context) => ChatWithDoctor()));
    } 
  }


  Future<bool> onWillPop() async {
  DateTime currentTime = DateTime.now();
  //Statement 1 Or statement2
  bool backButton = backbuttonpressedTime == null ||
      currentTime.difference(backbuttonpressedTime) > Duration(seconds: 3);
  if (backButton) {
    backbuttonpressedTime = currentTime;
    Fluttertoast.showToast(
        msg: "Double Click to exit app",
        backgroundColor: Colors.black,
        textColor: Colors.white);
    return false;
  }
  return true;
}
}

///Add this in ....

// ListView.builder(
//     padding: EdgeInsets.symmetric(vertical: 16.0),
//     itemBuilder: (BuildContext context, int index) {
//       if(index % 2 == 0) {
//         return _buildCarousel(context, index ~/ 2);
//       }
//       else {
//         return Divider();
//       }
//     },
//   ),

// try new horizental news

// Widget _buildCarousel(BuildContext context, int carouselIndex) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Text('Carousel $carouselIndex'),
//         SizedBox(
//           // you may want to use an aspect ratio here for tablet support
//           height: 200.0,
//           child: PageView.builder(
//             // store this controller in a State to save the carousel scroll position
//             controller: PageController(viewportFraction: 0.8),
//             itemBuilder: (BuildContext context, int itemIndex) {
//               return _buildCarouselItem(context, carouselIndex, itemIndex);
//             },
//           ),
//         )
//       ],
//     );
//   }

//   Widget _buildCarouselItem(BuildContext context, int carouselIndex, int itemIndex) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 4.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.grey,
//           borderRadius: BorderRadius.all(Radius.circular(4.0)),
//         ),
//       ),
//     );
//   }
