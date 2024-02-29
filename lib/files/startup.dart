// To parse this JSON data, do
//
//     final eventsday = eventsdayFromJson(jsonString);

import 'dart:convert';

List<Eventsday> eventsdayFromJson(String str) => List<Eventsday>.from(json.decode(str).map((x) => Eventsday.fromJson(x)));

String eventsdayToJson(List<Eventsday> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Eventsday {
  String eventName;
  String eventDescription;
  String eventDate;
  String eventVenue;

  Eventsday({
    required this.eventName,
    required this.eventDescription,
    required this.eventDate,
    required this.eventVenue,
  });

  factory Eventsday.fromJson(Map<String, dynamic> json) => Eventsday(
    eventName: json["eventName"],
    eventDescription: json["eventDescription"],
    eventDate: json["eventDate"],
    eventVenue: json["eventVenue"],
  );

  Map<String, dynamic> toJson() => {
    "eventName": eventName,
    "eventDescription": eventDescription,
    "eventDate": eventDate,
    "eventVenue": eventVenue,
  };
}
