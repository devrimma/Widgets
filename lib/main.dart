import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widgets/classes.dart';

void main() {
  runApp(MyFirstWidgets());
}

class MyFirstWidgets extends StatelessWidget {
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
          body: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Text("1"),
                  color: Colors.red,
                  padding: EdgeInsets.all(30),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Text("2"),
                  color: Colors.deepOrangeAccent,
                  padding: EdgeInsets.all(40),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Text("3"),
                  color: Colors.redAccent,
                  padding: EdgeInsets.all(50),
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
