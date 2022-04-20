import 'dart:async';

import 'package:flutter/material.dart';

import 'SignIn.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 Timer timer;
 @override
  void initState() {
    
    super.initState();
    // this.timer.cancel();
    timer = Timer(Duration(seconds: 2), (){

       Navigator.push(context, MaterialPageRoute(builder: (context) => SignInForm()));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
         height: MediaQuery.of(context).size.height,   width: MediaQuery.of(context).size.width,
     child:
             Image.asset("lib/Images/1_Splash.png",fit: BoxFit.cover,)
             
             
        
      );
  }
}
