import 'package:flutter/material.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _ViewEventState();
}

class _ViewEventState extends State<AddEvent> {
  TextEditingController event1=TextEditingController();
  TextEditingController event2=TextEditingController();
  TextEditingController event3=TextEditingController();
  TextEditingController event4=TextEditingController();
  var getEvent1="",getEvent2="",getEvent3="",getEvent4="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
            child: Column(
              children: [
                Text("Add  New  Events  Details",style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue
                ),),
                SizedBox(height: 20,),
                TextField(
                  controller: event1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Event Name"
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: event2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Event Description"
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: event3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Event Date"
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: event4,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Event Venue"
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){
                  getEvent1=event1.text;
                  getEvent2=event2.text;
                  getEvent3=event3.text;
                  getEvent4=event4.text;
                  print(getEvent1);
                  print(getEvent2);
                  print(getEvent3);
                  print(getEvent4);
                }, child: Text("Submit",style: TextStyle(color: Colors.blue),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
