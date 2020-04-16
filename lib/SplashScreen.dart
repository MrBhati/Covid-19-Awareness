import 'dart:async';

import 'package:demoapp/HomeScren.dart';
import 'package:flutter/material.dart';
import 'LocatiAllow.dart';
import 'MyApp.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:location/location.dart';

import 'PersonalinfoScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PermissionStatus _permissionGranted;
  var location = Location();
   var isLogin;
  startTime() async {
    _permissionGranted = await location.hasPermission();
    print("Locationis ");
    print(_permissionGranted);

    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  checkShred() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   isLogin = prefs.getBool('isLoggedIn') ?? false;
    print(isLogin);
  }

  void navigationPage() {  
//  if (isLogin) {
//       Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (context) => HomeScreen()),
//     );
   // }else{

  Navigator.pushReplacement(
      context,
      //TODO  "not using location"
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
   // }
  }
  
  

  @override
  void initState() {
    super.initState();
    checkShred();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(),
            ),
            Flexible(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "Welcome to",
                        style: TextStyle(
                          color: Colors.deepPurple.shade700,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          "Health Awareness",
                          style: TextStyle(
                              color: Colors.deepPurple.shade700,
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
                flex: 6,
                child: Image.asset(
                  'assets/images/Splashvactor.png',
                  height: 800,
                  width: 800,
                )),
            Flexible(
              flex: 3,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "CORONAVIRUS",
                        style: TextStyle(
                          color: Colors.deepPurple.shade700,
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          "COVID-19",
                          style: TextStyle(
                              color: Colors.deepPurple.shade700,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,30,10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset("assets/images/bhati.png",
                  height: 20,),
                ),
              ),
              )
          ]),
        ),
      ),
    );
  }
}
