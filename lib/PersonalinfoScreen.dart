import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomeScren.dart';

class PersonalinfoScreen extends StatefulWidget {
  @override
  _PersonalinfoScreenState createState() => _PersonalinfoScreenState();
}

class _PersonalinfoScreenState extends State<PersonalinfoScreen> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  List<String> gender = ['Male', 'Female'];
  var form_key = GlobalKey<FormState>();
  String Name = "", Age = "", nameKey="_key_name";
  String selectedString;
bool isLogin;


           checkShred() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isLogin = prefs.getBool('isLoggedIn') ?? false;
    // Checl use is login or not
    if (isLogin) {
      print("user already login");
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
    }
    //print(isLocatinSet);
  }

  // void getSharedInstance() async {
  //   //after the login REST api call && response code ==200
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('name', nameController.text.toString());
  //   prefs.setString('age', ageController.text.toString());
  //   prefs.setString('gender', gender);
  //   prefs?.setBool("isLoggedIn", true);
  //   Navigator.pushReplacement(context,
  //       MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
  // }

  @override
  void initState() {

     checkShred();
  }

  void getSharedInstance() async {
            //after the login REST api call && response code ==200
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString('name', nameController.text.toString());
             prefs.setString('age', ageController.text.toString());
             prefs?.setBool("isLoggedIn", true);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
          }


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key:  form_key,
          child: Column(children: <Widget>[
            Flexible(
              flex: 5,
              child: Container(
                child: Image.asset(
                  'assets/images/infoform.png',
                  height: 400,
                  width: 800,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                child: Text(
                  "Provide your personal info",
                  style: TextStyle(
                      color: Colors.deepPurple.shade800,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        child: TextFormField(
                          controller: nameController,
                          validator: (String value){
                            if(value.isEmpty){
                              return "Enter your name";

                            }
                          },
                          style: TextStyle(
                            color: Colors.deepPurple.shade700,
                          ),
                          decoration: const InputDecoration(  
                            labelStyle: TextStyle(color: Colors.deepPurple),
                            hintStyle:
                                TextStyle(color: Colors.deepPurpleAccent),
                            hintText: 'Enter your Full Name',
                            labelText: 'Name',
                          ),
                        ),
                      ),
                    ),
                    
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Container(
                            width:130, // do it in both Container
                            child: TextFormField(
                              controller: ageController,
                              validator: (String value){
                            if(value.isEmpty){
                              return "Enter your Age";

                            }
                          },
                              style: TextStyle(
                                color: Colors.deepPurple.shade700,
                              ),
                              decoration: const InputDecoration(
                                labelStyle: TextStyle(color: Colors.deepPurple),
                                hintStyle:
                                    TextStyle(color: Colors.deepPurpleAccent),
                                hintText: 'Enter your Age',
                                labelText: 'Age',
                              ),
                              maxLength: 3,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                WhitelistingTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),
                         Container(
                        width: 150, // do it in both Container
                        child: Center(
                          child: DropdownButton<String>(
                            value: selectedString,
                            hint: Text('Gender'),
                            items:<String>['Male','Female','Others'].map((String value){
                              return new DropdownMenuItem(
                                
                                child: new Text(value,style: TextStyle(color:Colors.purple[900]),),
                                value: value ,
                                );
                            }
                            ).toList(),
                            onChanged: (value){
                              setState(() {
                                
                              });
                              selectedString = value;
                            },
                          ),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: RaisedButton(
                onPressed: () {
                  if(form_key.currentState.validate()){
getSharedInstance();
                  }
                  
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => HomeScreen()),
                  // );
                  //  // Navigator.pushNamed(context, "YourRoute");
                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                  child: new Text(
                    "Save Information",
                    style: TextStyle(
                      color: Colors.deepPurple.shade700,
                    ),
                  ),
                ),
                color: Colors.deepPurple.shade100,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
// TextField(
//                         decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: 'Enter a search term'),
//                       ),
