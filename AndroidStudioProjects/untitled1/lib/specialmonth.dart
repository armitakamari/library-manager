import 'package:flutter/material.dart';

class SpecialMonthPage extends StatefulWidget {
  @override
  _SpecialMonthPageState createState() => _SpecialMonthPageState();
}

class _SpecialMonthPageState extends State<SpecialMonthPage> {
  int _selectedMonths = 1;
  int _pricePerMonth = 20;

  double get _totalPrice => _selectedMonths * _pricePerMonth.toDouble();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('Buy Premium Account', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<int>(
              value: _selectedMonths,
              onChanged: (newValue) {
                setState(() {
                  _selectedMonths = newValue!;
                });
              },
              items: List.generate(
                12,
                    (index) => DropdownMenuItem<int>(
                  value: index + 1,
                  child: Text('${index + 1} month(s)'),
                ),
              ),
            ),
            SizedBox(height: 40 ,width: 400),
            Text(
              'Total Price: \$${_totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}