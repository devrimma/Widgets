import 'package:flutter/material.dart';
import 'package:widgets/classes/event.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key key,
    @required this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent,
      elevation: 10,
      shadowColor: Colors.lightBlue,
      margin: EdgeInsets.symmetric(vertical: 7),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(
          "${event.name}",
          style: TextStyle(fontSize: 20.0,),
        ),
        subtitle: Text(
          "${event.location} ${event.date}",),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () => print("Редактировать"),
        ),
        onTap: () => print("Открыть"),
        onLongPress: () => print("Удалить"),
      ),
    );
  }
}