import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomeScren.dart';
import 'SymptomsScreen.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailsScreen extends StatefulWidget {
 DetailsScreen({this.title, this.subTitle, this.image, this.discription, this.id});
  final String title;
  final String subTitle;
  final String image;
  final String discription;
  final String id;


  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
    double _scrollOffsetY = 0;
    String data = "<div><h1>Demo Page</h1><p>This is a fantastic nonexistent product that you should buy!</p><h2>Pricing</h2><p>Lorem ipsum <b>dolor</b> sit amet.</p><h2>The Team</h2><p>There isn't <i>really</i> a team...</p><h2>Installation</h2><p>You <u>cannot</u> install a nonexistent product!</p></div>>";
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
      child:SafeArea(
      child: Scaffold(
          body: Column(children: <Widget>[
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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 15.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade100,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      )),
                  height: 150,
                  // margin: EdgeInsets.only(left: 20),
                  // margin: EdgeInsets.only(
                  //     bottom: (MediaQuery.of(context).size.height / 1.5), left: 20),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 10, 20),
                    child: Stack(
                      alignment: Alignment.topLeft,
                    //  crossAxisAlignment: CrossAxisAlignment.end,
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                         child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                               Container(
                                 width: 350,
                                 child: Text(widget.title,
                                     style: TextStyle(
                                       color: Colors.deepPurple.shade800,
                                       fontSize: 30 ,
                                       fontWeight: FontWeight.bold,
                                     )),
                               ),
                               Container(
                                 width: 300,
                                 padding: const EdgeInsets.only(top: 5),
                                 child: Text(widget.subTitle,
                                     style: TextStyle(
                                       color: Colors.deepPurple.shade800,
                                       fontSize: 16,
                                       fontWeight: FontWeight.w500,
                                     )),
                               )
                             ]),
                       ),
                       Align(
                         // padding: EdgeInsets.only(top: 10,right: 30),
                        alignment: Alignment.bottomRight,
                         child: Image.asset('assets/images/symptomes.png'),
                       )
                     ]),
                  ),
                ),

                 Container(
                    color: Colors.deepPurple.shade50,
                   child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
                    child:  Html(
                      data: widget.discription),
                  ),
                ),
              ],
            ),
          ),
        ),
       
        ////////////
          ], 
          ), 
      ),
  ));
  }
}