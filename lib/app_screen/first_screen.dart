import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.blueGrey,
      child: Center(
        child: Text(
          generateYourLuckyNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        )
        ),
      );
    throw UnimplementedError();
  }

  String generateYourLuckyNumber()
  {
    var random = Random();
    int luckyNum=random.nextInt(10);
    return "Your lucky number is $luckyNum";
  }
  
}