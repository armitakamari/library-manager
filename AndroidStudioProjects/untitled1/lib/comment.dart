
/* body: Stack(children:[
      Container(
    height: double.infinity,
    width: double.infinity,
    decoration:BoxDecoration(color: Colors.black12)
    ),
   //  menu(),
    ])
      ) );}}
 Widget menu() {
     return Container(
      color: Colors.black54,
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.black,
        tabs: [
          Tab(
            text: "Account",
            icon: Icon(Icons.account_circle_outlined),
          ),
          Tab(
            text: "Shop",
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          Tab(
            text: "Home",
            icon: Icon(Icons.home_work_outlined),
          ),
          Tab(
            text: "Libary",
            icon: Icon(Icons.bookmarks_outlined),
          ),
        ],
      ),
    );
  }*/