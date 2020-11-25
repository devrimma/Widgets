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
          body: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Row(
                  children: [
                    Container(),
                    Text("1"),
                    SizedBox(
                      width: 40,
                    ),
                    Text("1.1"),
                  ],
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: Container(
                    child: Text("2"),
                    color: Colors.deepOrangeAccent,
                    padding: EdgeInsets.all(100),
                  ),
                ),
                Container(
                  child: Text("3"),
                  color: Colors.redAccent,
                  padding: EdgeInsets.all(50),
                )
              ],
            ),
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
