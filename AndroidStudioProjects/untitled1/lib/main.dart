import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:untitled1/HomePage.dart';
import 'package:untitled1/EnrolmentPage.dart';
import 'package:untitled1/details1.dart';
import 'package:flutter/material.dart';
import 'First.dart';

//import 'package:untitled1/HomePageState.dart';
//import'package:untitled1/HomePage.dart ';

import 'EnrolmentPage.dart';
import 'First.dart';
import 'HomePage.dart';
import 'Second.dart';

//import 'flutter/src/material/colors.dart';
void main() {
  runApp(/*const*/ MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key})
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('Libary'),

      //home: EnrolmentPage(),
      // home: HomePageState(),
      // home: LoginPage(),
      home: LoginPage(),
     // home: bookone(),
    );
  }
}



