import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bookone extends StatelessWidget {
  // const bookone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //Stack(children: [
      Column(
        children: [
          Image.network(
              height: 400,
              width: 200,
              //  "https://m.media-amazon.com/images/I/71OZY035QKL._AC_UF1000,1000_QL80_FMwebp_.jpg"),
              "https://m.media-amazon.com/images/I/71OZY035QKL._AC_UF1000,1000_QL80_FMwebp_.jpg"),
          Text(
              'این کتاب به معصومیت و خرد دوران کودکی می‌پردازد که با بزرگ‌تر شدن‌مان به مرور شروع به محو شدن کرده و جای خودش را به «زرنگی» و «حیله‌گری» می‌دهد. ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              )),
          Text(
         ' تاریخ اولین انتشار: ۶ آوریل۱۹۴۳\n'
              +'نویسنده: آنتوان دو سنت‌اگزوپری\n'
              +'زبان اصلی: فرانسوی\n'+
              'ژانر: ادبیات کودکان، رمان کوتاه، حکایت، ادبیات گمانه‌زن\n'
             , style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    ); //])
    //);
  }
}
