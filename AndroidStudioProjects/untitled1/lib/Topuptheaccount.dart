import 'package:flutter/material.dart';

import 'Increasecredit.dart';

class Topuptheaccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('Account', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: ElevatedButton(

          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                double amount = 0.0;
                return AlertDialog(
                  backgroundColor: Colors.black26,
                  title: Text('Increase credit' , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                  content: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          amount = double.parse(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter the amount',
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancellation',style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    ),
                    ElevatedButton(
                      /*onPressed: () {
                        // ارسال مبلغ به سرور و افزایش اعتبار
                        // انتقال به صفحه پرداخت
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PaymentPage(amount:amount),
                          ),

                        );
                      }, */
                      onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return PaymentPage (amount:amount,) ;
                          }));
                    },
                      child: Text('the payment',style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Increase credit' , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
