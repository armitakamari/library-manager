
import 'package:flutter/material.dart';
import 'package:untitled1/Second.dart';
import 'EnrolmentPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void togglePasswordVisibility(bool value) {
    setState(() {
      _obscureText = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black12),
          ),
          Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Sign In ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      emailTextField(),
                      SizedBox(
                        height: 10,
                      ),
                      passwordTextField(),
                      SizedBox(
                        height: 5,
                      ),
                      forgetpassword(),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.black26,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black38,
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return SecondPage();
                                  }));
                            },
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton.icon(
                        label: Text(
                          'Making acount',
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        icon: Icon(Icons.perm_identity),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black12,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return EnrolmentPage();
                              }));
                        },
                      )
                    ]),
              )),
        ]));
  }

  Widget emailTextField() {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text('Email',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
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
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
      SizedBox(
        height: 30,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius:BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.white70, blurRadius: 6, offset: Offset(0, 2))
            ]),
        child: TextField(
          obscureText: _obscureText,
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(color: Colors.white70),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(Icons.lock, color: Colors.white70),
            hintText: 'Please enter your password ',
            hintStyle: TextStyle(color: Colors.white70),
            suffixIcon: IconButton(
              onPressed: () {
                togglePasswordVisibility(!_obscureText);
              },
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  Widget forgetpassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forget Password?',
          style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}






//Widget password//تحقیق در مورد  های colum و  , container ,sizebox  wiget
//کلاس BoxDecoration از کتابخانه ترسیم (painting library) مشتق شده است و قادر است برای یک کادر ، حاشیه ترسیم نماید ، آن را به شکل دایره یا مستطیل نمایش دهد و در صورت نمایش مستطیلی ، گوشه های آن را
//
// همچنین قابلیت ایجاد شیب رنگ و نمایش تصویر را نیز دارد . در نمایش تصویر قابلیت کنترل موقعیت تصویر و تراز آن را دارد .
//هر وقت از loggin خواستیم استفاده کنیم نه کلا هر وقت خواستیم از تصویر در شکل مورد نظر خود استفاده کنیم برای دور ان حاشور ان از decoration استفاده میکنیم و رنگ اونو میذاریم .و .....
//singlrchildscrollview and phisics and EdgeInsets.symmetric چین
// mainAxisAlignment

