import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class booktwo extends StatelessWidget {
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
              "https://m.media-amazon.com/images/I/71MhANkT6wL._AC_UF1000,1000_QL80_FMwebp_.jpg"),
          Text(
  'گاهی برای آنکه داستان عشق و دلدادگی را دریابیم،‌ تنها کافیست سفری به درون و ضمیر خود داشته باشیم. جایی در عمیق‌ترین نقطه قلب که عشق از آنجا می‌جوشد و به بیرون راه می‌یابد!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              )),
          Text(
              'نویسنده\n	الیف شافاک'+
              'مترجم\n	 آهو تقی زاده'+
             '\n سال انتشار:	۱۴۰۱'+
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
