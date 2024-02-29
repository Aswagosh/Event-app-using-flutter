import 'package:eventapp/menu/mainmenu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EventApp());
}
class EventApp extends StatefulWidget {
  const EventApp({super.key});

  @override
  State<EventApp> createState() => _EventAppState();
}

class _EventAppState extends State<EventApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TheEventor(),
    );
  }
}

