import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/loginscreen.dart';

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: AnimatedSplashScreen(
         splash: Image(image: AssetImage("assets/images/logo.png"),),
         nextScreen:login_screen(),
       splashIconSize: 900,
       duration: 5000,
     )
   );


  }

}