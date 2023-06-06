import 'package:flutter/material.dart';
import 'package:untitled1/First.dart';
import 'package:untitled1/details1.dart';
import 'package:untitled1/specialmonth.dart';

//import 'account_page.dart';
class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black54,
                title: Text('Account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),),
        // body: Column(



      body: Stack(children: [
        Container(
        height: double.infinity, //ارتفاع کل صفحه
          width: double.infinity, // عرض کل صفحه
          decoration: BoxDecoration(color: Colors.black12),

        ),
        //mainAxisAlignment: MainAxisAlignment.center,
      /* children: [
        CircleAvatar(
        backgroundImage: _imageFile != null ? FileImage(_imageFile) : null,
        radius: 50,
        ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.photo_library),
                          title: Text('Photo gallery'),
                          onTap: () {
                            _pickImage(ImageSource.gallery);
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.camera_alt),
                          title: Text('Camera'),
                          onTap: () {
                            _pickImage(ImageSource.camera);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text('Change profile picture'),
          ),
        ],*/
        Container(
            height:double.infinity, //ارتفاع کل صفحه
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //?////////?????????????????????/
                  children: [
                    /*Align(
                      alignment: Alignment.centerLeft,
                      child:Text('name:\n'
                          'Current credit:\n' ,
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
                          child:Container(
                              height: 50,
                              width: 200,
                              //  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              color: Colors.black26,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black38, // Background color
                                ),
                                child: const Text('Increase credit' ,style: TextStyle(color: Colors.white70 , fontWeight: FontWeight.bold),),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder:(context){
                                    return LoginPage();
                                  }));
                                },
                              )
                          ),
                        ),

                        SizedBox(width: 100),
                        Align(
                          alignment: Alignment.centerRight,
                          child:Container(
                              height: 50,
                              width: 200,
                              //  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              color: Colors.black26,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black38, // Background color
                                ),
                                child: const Text('Upgrade to special account' ,style: TextStyle(color: Colors.white70 , fontWeight: FontWeight.bold),),
                                onPressed: () {
                                  Navigator.of(context).pop(MaterialPageRoute(builder:(context){
                                    return SpecialMonthPage();
                                  }));
                                },
                              )
                          ),
                        ),
                      ],
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
                            Navigator.of(context).push(MaterialPageRoute(builder:(context){
                              return LoginPage();
                            }));
                          },
                        )
                    ),

                  ]),
            ))],
        )

         ,)


        );
  }
}


