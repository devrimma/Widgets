import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:widgets/classes.dart';
import 'package:widgets/event.dart';

void main() {
  runApp(MyFirstWidgets());
}

class MyFirstWidgets extends StatelessWidget {

  final List<Event> event = [
    Event(name: "Event 1", location: "Location 1", date: DateTime.now()),
    Event(name: "Event 2", location: "Location 2", date: DateTime.now()),
    Event(name: "Event 3", location: "Location 3", date: DateTime.now()),
    Event(name: "Event 4", location: "Location 4", date: DateTime.now()),
    Event(name: "Event 5", location: "Location 5", date: DateTime.now()),
    Event(name: "Event 6", location: "Location 6", date: DateTime.now()),
    Event(name: "Event 7", location: "Location 7", date: DateTime.now()),
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
            itemCount: event.length,
            itemBuilder: (_, index) => Text(
              "$index - ${event[index].name} - ${event[index].location} "
                  "- ${event[index].date}",
              style: TextStyle(fontSize: 31.0),),
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
