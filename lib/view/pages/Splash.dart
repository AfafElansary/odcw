import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:odcw/view/pages/login.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';


class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: 'assets/ourpar.jpg',splashIconSize: 200,



        nextScreen: Login(),
    );


    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(10),
    child: AnimatedSplashScreen(
    duration: 1000,
    splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [



Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [

Text("Orange", style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.orange,
fontSize: 30,)),
SizedBox(
width: 10,
),

Text("Digital Center", style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.black,
fontSize: 30,)),
],

),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 30.0),
              child: ProgressBarAnimation(
                duration: Duration(milliseconds: 4600),
             color: Colors.orange,
                height: 10.0,
                width: 500.0,
              ),
            )
          ],
    ),
        nextScreen: Login(),




    )))) );






  }}