import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:widgets/classes.dart';

void main() {
  runApp(MyFirstWidgets());
}

class MyFirstWidgets extends StatelessWidget {

  final List<String> txt = [
    "Text 1",
    "Text 2",
    "Text 3",
    "Text 4",
    "Text 5",
    "Text 6",
    "Text 7",
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(Family().ourFamily("Family")),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: ListView.builder(
            itemCount: txt.length,
            itemBuilder: (_, index) => Text(
              txt[index],
              style: TextStyle(fontSize: 100.0),),
          ),
          floatingActionButton: FloatingActionButton(
            child: Text("Плюс"),
            backgroundColor: Colors.red,
            onPressed: null,
          ),
          backgroundColor: Colors.white,
        ));
  }
}
