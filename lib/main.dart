import 'package:flutter/material.dart';

import 'app_screen/first_screen.dart';

// The main function is the starting point for all our Flutter apps.
void main() => runApp(MyFlutterApp());


class MyFlutterApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     debugShowCheckedModeBanner: false,
       home: Scaffold(
         backgroundColor: Colors.blueGrey,
         appBar: AppBar(
           title: Text("Flutter First App"),
           backgroundColor: Colors.blueGrey[900],
         ),
         body: FirstScreen()
       ));
    throw UnimplementedError();
  }
   
}
