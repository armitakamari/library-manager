import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/book2.dart';
import 'package:untitled1/book3.dart';
import 'package:untitled1/bookfour.dart';

import 'details1.dart';

class IudioBook extends StatelessWidget {
  const IudioBook({Key? key}) : super(key: key);



  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [

            SizedBox(
              child: Text('Favourite', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
              height: 40,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => bookone()),
                      );
                    },
                    child: Image.network(
                      height: 100,
                      width: 200,
                      "https://m.media-amazon.com/images/I/71OZY035QKL._AC_UF1000,1000_QL80_FMwebp_.jpg",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => booktwo()),
                      );
                    },
                    child: Image.network(
                      height: 100,
                      width: 200,

                        'https://m.media-amazon.com/images/I/71MhANkT6wL._AC_UF1000,1000_QL80_FMwebp_.jpg',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => bookthree()),
                      );
                    },
                    child: Image.network(
                      height: 100,
                      width: 200,
                      "https://www.iranketab.ir/Images/ProductImages/49e5b745fb854bffba6c7d625d5d53d0.jpg",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => bookfour()),
                      );
                    },
                    child: Image.network(
                      height: 100,
                      width: 200,
                        'https://upload.wikimedia.org/wikipedia/commons/7/7c/Two_centuries_of_silence.jpg',
                    ),
                  )
                ],)
    ),
            SizedBox(
              child: Text('New Release', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
              height: 40,
            ),
           /*prototypeItem:*/ Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bookone()),
                    );
                  },
                  child: Image.network(
                    height: 100,
                    width: 200,
                    "https://m.media-amazon.com/images/I/71OZY035QKL._AC_UF1000,1000_QL80_FMwebp_.jpg",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => booktwo()),
                    );
                  },
                  child: Image.network(
                    height: 100,
                    width: 200,

                    'https://m.media-amazon.com/images/I/71MhANkT6wL._AC_UF1000,1000_QL80_FMwebp_.jpg',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bookthree()),
                    );
                  },
                  child: Image.network(
                    height: 100,
                    width: 200,
                    "https://www.iranketab.ir/Images/ProductImages/49e5b745fb854bffba6c7d625d5d53d0.jpg",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bookfour()),
                    );
                  },
                  child: Image.network(
                    height: 100,
                    width: 200,
                    'https://upload.wikimedia.org/wikipedia/commons/7/7c/Two_centuries_of_silence.jpg',
                  ),
                )
              ],
              ),
            ),
            SizedBox(
              child: Text('Top Selling', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
              height: 40,
            ),
           Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => bookone()),
                      );
                    },
                    child: Image.network(
                      height: 100,
                      width: 200,
                      "https://m.media-amazon.com/images/I/71OZY035QKL._AC_UF1000,1000_QL80_FMwebp_.jpg",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => booktwo()),
                      );
                    },
                    child: Image.network(
                      height: 100,
                      width: 200,

                      'https://m.media-amazon.com/images/I/71MhANkT6wL._AC_UF1000,1000_QL80_FMwebp_.jpg',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => bookthree()),
                      );
                    },
                    child: Image.network(
                      height: 100,
                      width: 200,
                      "https://www.iranketab.ir/Images/ProductImages/49e5b745fb854bffba6c7d625d5d53d0.jpg",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => bookfour()),
                      );
                    },
                    child: Image.network(
                      height: 100,
                      width: 200,
                      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Two_centuries_of_silence.jpg',
                    ),
                  )
                ],
              )),

             ])
    );
  }
}
