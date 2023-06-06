import 'package:flutter/material.dart';

//void main() => runApp(SecondPage());

class  SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcom to the heaven of the lover',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          ),
      body: Stack(children:[
      Container(
        height: double.infinity, //ارتفاع کل صفحه
        width: double.infinity, // عرض کل صفحه
        decoration: BoxDecoration(color: Colors.black12),
      ),
      ],
    )),);
  }
}