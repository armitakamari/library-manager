import 'package:flutter/material.dart';
import 'package:untitled1/HomePage.dart';
import 'package:untitled1/Second.dart';

class EnrolmentPage extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          Container(
            height: double.infinity, //ارتفاع کل صفحه
            width: double.infinity, // عرض کل صفحه
            decoration: BoxDecoration(color: Colors.black12),
          ),
          Container(
              height: double.infinity, //ارتفاع کل صفحه
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //?////////?????????????????????/
                    children: [
                      Text('Enter your information please',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      PersonTextField(),
                      SizedBox(
                        height: 10,
                      ),
                      emailTextField(),
                      SizedBox(
                        height: 10,
                      ),
                      passwordTextField(),
                      SizedBox(
                        height: 10,
                      ),
                      passwordTextFieldagain(),
                      SizedBox(
                        height: 20,
                      ),
                      //forgetpassword(),
                      // SizedBox(
                      // height: 15.0,
                      //),
                      Container(
                          height: 50,
                          width: double.infinity,
                          //  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          color: Colors.black26,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black38, // Background color
                            ),
                            child: const Text('Finish', style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),),

                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder:(context){
                                return SecondPage();
                              }));
                            },
                          )
                      ),
                    ]),
              )),
        ]));
  }

  Widget emailTextField() {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text('Email',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 30,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.white70, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white70),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.email, color: Colors.white70),
              hintText: 'Please enter your email ',
              hintStyle: TextStyle(color: Colors.white70)),
        ),
      )
    ]);
  }

  Widget passwordTextField() {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text('Password',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 30,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.white70, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(color: Colors.white70),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.lock, color: Colors.white70),
              hintText: 'Please enter your password ',
              hintStyle: TextStyle(color: Colors.white70)),
        ),
      )
    ]);
  }

  Widget passwordTextFieldagain() {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text('Confirm your password',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 30,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.white70, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(color: Colors.white70),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.lock, color: Colors.white70),
              hintText: 'Please enter your password again',
              hintStyle: TextStyle(color: Colors.white70)),
        ),
      )
    ]);
  }

  Widget PersonTextField() {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text('Username',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 30,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.white70, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(color: Colors.white70),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.perm_identity, color: Colors.white70),
              hintText: 'Please enter your username ',
              hintStyle: TextStyle(color: Colors.white70)),
        ),
      )
    ]);
  }
}


