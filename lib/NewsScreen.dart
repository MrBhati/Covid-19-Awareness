import 'package:flutter/material.dart';
import 'HomeScren.dart';

class NewsScreen extends StatefulWidget {
  @override
  NewsScreenState createState() => NewsScreenState();
}

class NewsScreenState extends State<NewsScreen> {
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
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text("Today's News",
                                      style: TextStyle(
                                        color: Colors.deepPurple.shade800,
                                        fontSize: 35 - _scrollOffsetY * 0.07,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text('On CORONAVIRUS',
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
                            height: 150,
                            child: Image.asset('assets/images/crona.png'),
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
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(13.0),
                                topRight: const Radius.circular(13.0),
                              ),
                              child: Container(
                                // padding: EdgeInsets.only(top: 10,right: 30),
                                height: 106,
                                child:
                                    Image.asset('assets/images/news_baner.png'),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(10,10,10,5),
                              child: Text("Sona develops rapid screening test for coronavirus.",
                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 8, 12, 8),
                              child: Container(
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('11 February 2020',
                                          style: TextStyle(
                                            color: Colors.white,
                                               fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      Text('BioSpectru Mindia',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      
                                    ]),
                              ),
                            ),
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
