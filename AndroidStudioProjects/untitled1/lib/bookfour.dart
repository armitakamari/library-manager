import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bookfour extends StatelessWidget {
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
              'https://upload.wikimedia.org/wikipedia/commons/7/7c/Two_centuries_of_silence.jpg'),

          Text(
              '«نبردی که ایرانیان در طی این دو قرن با مهاجمان عرب کردند همه در تاریکی خشم و تعصب نبود. در روشنی دانش و خرد نیز این نبرد دوام داشت و بازار مشاجرات و گفتگوهای دینی و فلسفی گرم بود…طی دو سده نخستین بسیاری از ایرانیان، از ابتدا دین اسلام را با شور و شوق پذیرا شدند، زیرا دین تازه را از آیین دیرین نیاکان خویش برتر می‌یافتند و ثنویت زرتشتی را در برابر توحید اسلام، شرک و کفر می‌شناختند.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              )),
          Text(
              'نویسنده\n	 عبدالحسین زرین‌کوب:'
                  '\n سال انتشار:	1303'+
                  'فرمت کتاب:\n	EPUB'+
                  'تعداد صفحات\n	:400'+
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
