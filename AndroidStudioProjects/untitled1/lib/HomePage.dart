import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'IudioBook.dart';
import 'details1.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  get body => null;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text( 'The lastest book' , selectionColor: Colors.black45, style: TextStyle(fontWeight: FontWeight.bold  ,),),
              /*Container(
                height: MediaQuery.of(context).size.height * 1 / 3,
                //child: Center(child: Text("The last book"),),
                color: Colors.black38,
              ),*/
              InkWell(

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  bookone()),
                  );
                },
                child: Image.network(
                    height: 200,
                    width: 200,
                    "https://m.media-amazon.com/images/I/71OZY035QKL._AC_UF1000,1000_QL80_FMwebp_.jpg"),
              ),
              TabBar(
                unselectedLabelColor: Colors.black12,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(Icons.edit_note_sharp),
                  ),
                  Tab(
                    icon: Icon(Icons.volume_up_outlined),
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                      IudioBook(),
                    // TextBook,
                  ],
                  controller: _tabController,
                ),
              ),

            ],
          ),
        ));
  }
}
