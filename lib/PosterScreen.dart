import 'package:flutter/material.dart';
import 'HomeScren.dart';

class PosterScreen extends StatefulWidget {
  @override
  PosterScreenState createState() => PosterScreenState();
}

class PosterScreenState extends State<PosterScreen> {
  double _scrollOffsetY = 0;
  String disclaimer;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(children: <Widget>[
        Container(
          color: Colors.deepPurple.shade100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
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
                                    child: Text('Frome CORONAVIRUS',
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade800,
                                          fontSize: 16 - _scrollOffsetY * 0.07,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  )
                                ]),
                          ),
                          Container(
                            // padding: EdgeInsets.only(top: 10,right: 30),
                            
                            child: Image.asset('assets/images/sheld.png',height:150,),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 4),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    elevation: 4.0,
                    color: Colors.deepPurple,
                    child: new Container(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text('Symptoms',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text('of CORONAVIRUS',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    )
                                  ]),
                            ),
                            Container(
                              // padding: EdgeInsets.only(top: 10,right: 30),
                              height: 100,
                              child: Image.asset('assets/images/symptomes.png'),
                            )
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ])),
    );
  }
}
