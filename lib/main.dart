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
            child: Container(
              width: 400,
              height: 400,
              color: Colors.lightBlue,
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                verticalDirection: VerticalDirection.down,
                textDirection: TextDirection.rtl,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Text("X"),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
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
