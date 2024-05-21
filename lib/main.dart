import 'package:flutter/material.dart';
import 'package:newsapp/Signupscreen.dart';
import 'package:newsapp/Welcome.dart';
import 'package:newsapp/loginscreen.dart';

import 'homescreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "News application",
      home: Welcome(),
    );

  }
}
