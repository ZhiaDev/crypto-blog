import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

Widget getBlogPost(
    {required String imageAddr,
    required String name,
    required String sell,
    required String buy}) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage('images/$imageAddr'),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'سیگنال $name روز ۲۴ اردیبهشت',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF181C1E),
            ),
          ),
          SizedBox(width: 8),
          Icon(IconlyBold.chart),
        ],
      ),
      SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'فروش روی : $sell',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(width: 8),
          Icon(
            IconlyBold.arrow_up_2,
            color: Colors.red,
          ),
          SizedBox(width: 50),
          Text(
            'خرید روی : $buy',
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(width: 8),
          Icon(
            IconlyBold.arrow_down_2,
            color: Colors.green,
          ),
        ],
      ),
      SizedBox(height: 15),
    ],
  );
}
