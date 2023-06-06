import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  final double amount;

  PaymentPage({required this.amount});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String cardNumber = '3076';
  String pin = '333050366182';

  void _showSuccessToast() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Payment was successfull' ,  style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black45,
      ),
    );
  }

  void _showIncorrectPinToast() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black45,
        content: Text('Incorrect password' ,  style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),),

      ),
    );
  }

  void _showInsufficientBalanceToast() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Imnsufficient inventory' ,  style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black12 ,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black26,
        title: Text(' the payment' ,style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'the paymentAmount of the money That had to be paid:',
            style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              '${widget.amount} euro',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                cardNumber = value;
              },
              decoration: InputDecoration(
                hintText: ' card number',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10.0),
            TextField(
              onChanged: (value) {
                pin = value;
              },
              decoration: InputDecoration(
                hintText: ' card password',
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // ارسال درخواست پرداخت به سرور
                // بررسی رمز کارت و موجودی
                if (pin == '1234') {
                  if (widget.amount <= 100000) {
                    _showSuccessToast();
                  } else {
                    _showInsufficientBalanceToast();
                  }
                } else {
                  _showIncorrectPinToast();
                }
              },
              child: Text( 'the payment'  ,style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}