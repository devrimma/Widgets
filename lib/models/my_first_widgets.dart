import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets/screens/home_screen.dart';

class MyFirstWidgets extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}

