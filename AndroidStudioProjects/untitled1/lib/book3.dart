import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bookthree extends StatelessWidget {
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
              "https://www.iranketab.ir/Images/ProductImages/49e5b745fb854bffba6c7d625d5d53d0.jpg"),
          Text(
            'کتاب صد جنگ بزرگ تاریخ علی غفوری در کتاب صد جنگ بزرگ تاریخ شما را با جنگ‌های مختلف و مهم در طول تاریخ آشنا خواهد کرد. جنگ را هیچ کس دوست ندارد. در جنگ، پدران پسران را به خاک می‌سپارند حال آن که در صلح، پسران پدران را!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              )),
          Text(
              'نویسنده\n	 علی غفوری:'+
                  'مترجم\n	: -'+
                  '\n سال انتشار:	۱۴۰۱'+
                  'فرمت کتاب:\n	EPUB'+
                  'تعداد صفحات\n	:199'+
                  '\nزبان:	فارسی'
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
