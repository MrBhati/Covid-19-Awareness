import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'HomeScren.dart';

class AboutScreen extends StatefulWidget {
  @override
  AboutScreenState createState() => AboutScreenState();
}

class AboutScreenState extends State<AboutScreen> {
  double _scrollOffsetY = 0;
  String disclaimer;
  String aboutHtmlData = " <h2> Everything You Should Know About the 2019 Coronavirus and COVID-19</h2><p>In early 2020, a new virus began generating headlines all over the world because of the unprecedented speed ofits transmission.</p><p>From its origins in a food market in Wuhan, China, in December 2019 to countries as far-flung as the UnitedStates and the Philippines, the virus (officially named SARS-CoV-2) has affected hundreds of thousands, with arising death toll now over 17,000+.</p><p>The disease caused by an infection with SARS-CoV-2 is called COVID-19, which stands for coronavirus disease 2019.</p><p>In spite of the global panic in the news about this virus, you’re unlikely to contract SARS-CoV-2 unless you’vebeen in contact with someone who has a SARS-CoV-2 infection.</p><h3>What are the symptoms?</h3><p>Doctors are learning new things about this virus every day. So far, we know that COVID-19 may not initially causeany symptoms for some people.</p<p>You may carry the virus for 2 days or up to 2 weeks</p><p>Some <b>common symptoms</b> that have been specifically linked to COVID-19 include:</p><ul> <li>shortness of breath </li> <li>having a cough that gets more severe over time </li <li>a low-grade fever that gradually increases in temperature </li></ul><p>These symptoms may become more severe in some people. Call emergency medical services if you or someone you care for have any of the following symptoms:</p><ul>    <li>trouble breathing    </li><li>blue lips or face    </li>    <li>persistent pain or pressure in the chest    </li>    <li>confusion    </li>    <li>excessive drowsiness    </li></ul><h2>What to do if you have symptoms of COVID-19</h2><p>If you have COVID-19 or suspect you have the virus that causes COVID-19, you should seek medical care.</p><p>You have several options for obtaining medical care, including being seen by your primary healthcare provider. The CDC recommends calling your provider first so that they can take the necessary steps to prepare for your visit and protect others from possible exposure to the virus that causes COVID-19.</p><p>Some healthcare providers also offer virtual visits through your smartphone or laptop, so you may not need to leave your home for an initial assessment.</p><p>If you don’t have a primary healthcare provider, you can use this tool to find a local primary care office in your area.</p><p>If you have a medical emergency, call 911. Notify the operator that you have COVID-19 or suspect exposure to the virus that causes it. If possible, put on a face mask before emergency medical services arrive.</p><h2>What causes coronaviruses?</h2><p>Coronaviruses are zoonotic. This means they first develop in animals before developing in humans.</p><p>For the virus to pass from animal to humans, a person has to come into close contact with an animal that carries the infection.</p><p>Once the virus develops in people, coronaviruses can be spread from person to person through respiratory droplets. This is a technical name for the wet stuff that moves through the air when you cough or sneeze.</p><p>The viral material hangs out in these droplets and can be breathed into the respiratory tract (your windpipe and lungs), where the virus can then lead to an infection.</p><p>The 2019 coronavirus hasn’t been definitively linked to a specific animal.</p><p>Researchers believe that the virus may have been passed from bats to another animal — either snakes or pangolins — and then transmitted to humans. This transmission likely occurred in the open food market in Wuhan, China.</p><h2>Who’s at increased risk?</h2><p> You’re at high risk for contracting SARS-CoV-2 if you come into contact with someone who’s carrying it, especially if you’ve been exposed to their saliva or been near them when they’ve coughed or sneezed.</p><p>Without taking proper prevention measures, you’re also at high risk if you:</p><ul><li>live with someone who has contracted the virus    </li>    <li>are providing home care for someone who has contracted the virus    </li>    <li>have an intimate partner who has contracted the virus    </li> </ul><p>Older people and people with certain health conditions have a higher risk for severe complications if they contract the virus. These health conditions include: </p>    <li>lung conditions, such as COPD and asthma    <li>certain heart conditions    </li>    <li>immune system conditions, such as HIV    </li><li>cancer that requires treatment    </li>    <li>severe obesity    </li>    <li>other health conditions, if not well-controlled, such as diabetes, kidney disease, or liver disease        /li></ul><h2>How are coronaviruses diagnosed?</h2><p> COVID-19 can be diagnosed similarly to other conditions caused by viral infections: using a blood, saliva, or tissue sample. However, most tests use a cotton swab to retrieve a sample from the inside of your nostrils.</p><p> Tests are conducted by the CDC, some state health departments, and some commercial companies. See your state’s health department website</p><p> Talk to your doctor right away if you think you have COVID-19 or you notice symptoms. Your doctor will advise you on whether you should stay home and monitor your symptoms, come in to the doctor’s office to be evaluated, or go to the hospital for more urgent care.</p><h2>What treatments are available?</h2><p>There’s currently no treatment specifically approved for COVID-19, and no cure for an infection, although treatments and vaccines are currently under study. Instead, treatment focuses on managing symptoms as the virus runs its course. </p><p>Seek immediate medical help if you think you have COVID-19. Your doctor will recommend treatment for any symptoms or complications that develop.</p><p>Other coronaviruses like SARS and MERS are also treated by managing symptoms. In some cases, experimental treatments are tested to see how effective they are. Examples of therapies used for these illnesses include:</p><ul>    <li>antiviral or retroviral medications    </li>    <li>breathing support, such as mechanical ventilation    </li>    <li>steroids to reduce lung swelling    </li>    <li>blood plasma transfusions    </li></ul><h2>    What are the possible complications from COVID-19? </h2><p> The most serious complication of a SARS-CoV-2 infection is a type of pneumonia that’s been called 2019 novel coronavirus-infected pneumonia (NCIP).</p><p>    138 people admitted into hospitals in Wuhan, China, with NCIP found that 26 percent of those admitted had severe cases and needed to be treated in the intensive care unit (ICU). </p><p>About 4.3 percent of these people who were admitted to the ICU died from this type of pneumonia. It should be noted that people who were admitted to the ICU were on average older and had more underlying health conditions than people who didn’t go to the ICU.</p><p>So far, NCIP is the only complication specifically linked to the 2019 coronavirus. Researchers have seen the following complications in people who have developed COVID-19:</p><ul>    <li>acute respiratory distress syndrome (ARDS)    </li>    <li>irregular heart rate (arrhythmia)    </li>    <li>cardiovascular shock    </li>    <li>severe muscle pain (myalgia)    </li>    <li>fatigue</li>    <li>heart damage or heart attack    </li></ul> ";

  void initState(){
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
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
                            padding: const EdgeInsets.fromLTRB(20,0,0,0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text('What is it ?',
                                      style: TextStyle(
                                         color: Colors.deepPurple.shade800,
                                        fontSize: 35 - _scrollOffsetY * 0.07,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text('CORONAVIRUS',
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
                            height: 200,
                            child: Image.asset('assets/images/crona.png'),
                          )
                        ]),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 250),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 15.0, left: 20),
                      //   child: Text(
                      //     'Medical Council of India',
                      //     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0, left: 20, right: 20, top: 15 ),
                        child: Html(data: aboutHtmlData),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        
      ])),
    );
  }
}
