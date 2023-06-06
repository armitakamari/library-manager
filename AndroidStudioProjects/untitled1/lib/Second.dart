import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/AccountPage.dart';
import 'package:untitled1/HomePage.dart';
import 'package:untitled1/LibaryPage.dart';
import 'package:untitled1/ShopPage.dart';

import 'account_page.dart';

//import 'chance.dart';

class SecondPage extends StatefulWidget {
  @override
  Second createState() => Second();
}

class Second extends State<SecondPage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          /*  appBar: AppBar(
        title: Text('Welcom to the heaven of the book Lovers',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.black26,
        shadowColor: Colors.white10,
      ),*/
          bottomNavigationBar: Container(
            color: Colors.black,
            height: 50,
            child: TabBar(
              controller: tabController,
              //primary:black;
              tabs: [
                Icon(Icons.home_outlined),
                Icon(Icons.account_circle_outlined),
                Icon(Icons.shop_two_outlined),
                Icon(Icons.menu_book),

              ],
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              //HomePage(),
              HomePage(), ////?????????????????????
              // AccountPage(),
              chance(),
              LibaryPage(),
              ShopPage(),

            ],
          ),
          /*   bottomNavigationBar: DefaultTabController(
              length: 4,
              child: Scaffold(
                  body: NestedScrollView(
                    headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[
                        new SliverAppBar(
                      //    title: Text('Tabs Demo'),
                        //  pinned: true,
                          floating: true,
                          bottom: TabBar(
                            isScrollable: true,
                            tabs: [
                              Tab(child:Text('Home',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                              Tab(child: Text('Libary',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                              Tab(child: Text('Shop',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                              Tab(child: Text('Account',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ];
                    },
                    body: TabBarView(
                      children: <Widget>[


                      ],
                    ),
                  )),
            )*/
        ));
  }


}
