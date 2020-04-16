import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class ReferenceScreen extends StatefulWidget {
  @override
  _ReferenceScreenState createState() => _ReferenceScreenState();
}

class _ReferenceScreenState extends State<ReferenceScreen> {
  _launchURL() async {
    const url = 'https://surendrabhati.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

   _launchURLWHO() async {
    const url = 'https://www.who.int/emergencies/diseases/novel-coronavirus-2019';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


   _launchURLCDC() async {
    const url = 'https://www.cdc.gov/coronavirus/2019-ncov/index.html';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

   _launchURLCanada() async {
    const url = 'https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19.html';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

   _launchURLHelthline() async {
    const url = 'https://www.healthline.com/health/coronavirus-covid-19';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

   _launchURLIHS() async {
    const url = 'https://www.ihs.gov/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                mainAxisAlignment: MainAxisAlignment.start,
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text("Reference",
                    style: TextStyle(
                      color: Colors.deepPurple.shade800,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                  )
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
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "About Developer",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 19,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 20.0, indent: 5.0, color: Colors.deepPurple),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 120,
                        child: Image.asset('assets/images/bhati.png'),
                      ),
                    ),
                    Container(
                      width: 2,
                      color: Colors.deepPurple,
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Column(children: <Widget>[
                          InkWell(
                            child: Text(
                              "Surendra Bhati",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.w800),
                            ),
                            onTap: () {
                              _launchURL();
                              // Navigator.pushNamed(context, "YourRoute");
                            },
                          ),
                          Text(
                            "                        Sr. Software developer",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w400),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "Source Reference:",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 19,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 20.0, indent: 5.0, color: Colors.deepPurple),
                ],
              ),
            ),
            Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                      child:Image.asset(
                        "assets/images/ref1.png",
                        width: 120,
                      ),
                      onTap: () {
                              _launchURLCDC();
                              // Navigator.pushNamed(context, "YourRoute");
                            },
                      ),
                      InkWell(
                      child:Image.asset(
                        "assets/images/ref3.png",
                        width: 120,
                      ),
                      onTap: () {
                              _launchURLWHO();
                              // Navigator.pushNamed(context, "YourRoute");
                            },),

                      InkWell(
                      child:Image.asset(
                        "assets/images/ref4.png",
                        width: 120,
                      ),
                      onTap: () {
                              _launchURLCanada();
                              // Navigator.pushNamed(context, "YourRoute");
                            },),

                      InkWell(
                      child:Image.asset(
                        "assets/images/ref2.png",
                        width: 120,
                      ),
                      
                      onTap: () {
                              _launchURLHelthline();
                              // Navigator.pushNamed(context, "YourRoute");
                            },),

                      InkWell(
                      child:Image.asset(
                        "assets/images/ref5.png",
                        width: 120,
                      ),
                      onTap: () {
                              _launchURLIHS();
                              // Navigator.pushNamed(context, "YourRoute");
                            },),
                    ],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: SizedBox(
                      width: double.infinity, // match_parent
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
