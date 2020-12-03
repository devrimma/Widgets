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
    Event(name: "Event 8", location: "Location 8", date: DateTime.now()),
    Event(name: "Event 9", location: "Location 9", date: DateTime.now()),
    Event(name: "Event 10", location: "Location 10", date: DateTime.now()),
    Event(name: "Event 11", location: "Location 11", date: DateTime.now()),
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
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(20),
            itemCount: event.length,
            itemBuilder: (_, index) =>
                Card(
                  color: Colors.redAccent,
                  elevation: 10,
                  shadowColor: Colors.lightBlue,
                  margin: EdgeInsets.symmetric(vertical: 7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: Text(
                      "${event[index].name}",
                      style: TextStyle(fontSize: 20.0,),
                    ),
                    subtitle: Text(
                      "${event[index].location} ${event[index].date}",),
                    trailing: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () => print("Редактировать"),
                    ),
                    onTap: () => print("Открыть"),
                    onLongPress: () => print("Удалить"),
                  ),
                ),
          ),
          backgroundColor: Colors.white,
        ));
  }
}
