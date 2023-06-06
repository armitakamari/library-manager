import 'package:flutter/material.dart';
import 'package:untitled1/Topuptheaccount.dart';
import 'package:untitled1/specialmonth.dart';

import 'First.dart';

class chance extends StatefulWidget {
  const chance({Key? key}) : super(key: key);

  @override
  State<chance> createState() => chancepage();
}

class chancepage extends State<chance> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white38,
          title: Text('Account', style: TextStyle(color: Colors.black),),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isDark = !_isDark;
                });
              },
              icon: Icon(
                _isDark ? Icons.dark_mode : Icons.light_mode,
              ),
            ),
          ],
        ),

        body :ListView(
          children: [
            Container(
              color: Colors.black26,

              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.w3schools.com/w3images/avatar2.png'),
                      radius: 100,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Armita Kamary',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      ' armytakmry@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Regular User',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black12,
                      ),
                      onPressed: () {
// do something
                      },
                      child: Text('Edit Profile', style: TextStyle(color: Colors.white),),
                    ),
                    /* child: Column(
           // mainAxisAlignment: MainAxisAlignment.start,
//?////////?????????????????????/
            //children: [
            Align(
            alignment: Alignment.centerLeft,
            //child: Text('name:\n'
                'Current credit:\n',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),*/
                    SizedBox(
                      height: 500,
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 50,
                              width: 200,
                              //  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              color: Colors.black26,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black38, // Background color
                                ),
                                child: const Text('Increase credit', style: TextStyle(
                                    color: Colors.white70, fontWeight: FontWeight.bold),),
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return Topuptheaccount() ;
                                      }));
                                },
                               /* onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return  ;
                                      }));
                                },*/
                              )
                          ),
                        ),

                        SizedBox(width: 100),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 50,
                              width: 200,
                              //  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              color: Colors.black26,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black38, // Background color
                                ),
                                child: const Text('Upgrade to special account', style: TextStyle(
                                    color: Colors.white70, fontWeight: FontWeight.bold),),
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return SpecialMonthPage() ;
                                      }));
                                },
                          ),
                        ),
                        )],
                    ),

                    SizedBox(
                      height: 1000,
                    ),
                    Container(
                        height: 50,
                        // width: double.infinity,
                        //  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        color: Colors.black26,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black38, // Background color
                          ),
                          child: const Text('Leave' ,style: TextStyle(color: Colors.white70 , fontWeight: FontWeight.bold),),

                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return LoginPage() ;
                                }));
                          },
                        )
                    ),

                  ]),
            ),
          ],
        )

    ),
    );

   // )
   // ,
  //  );
  }
}