
import 'package:flutter/material.dart';
import 'package:widgets/classes/all_text.dart';
import 'package:widgets/classes/event.dart';
import 'package:widgets/components/event_card.dart';

class HomeScreen extends StatelessWidget {
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
    return Scaffold(
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
            EventCard(event: event[index]),
      ),
      backgroundColor: Colors.white,
    );
  }
}

