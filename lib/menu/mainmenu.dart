import 'package:eventapp/menu/addevent.dart';
import 'package:eventapp/menu/viewevent.dart';
import 'package:flutter/material.dart';

class TheEventor extends StatefulWidget {
  const TheEventor({super.key});

  @override
  State<TheEventor> createState() => _TheEventorState();
}

class _TheEventorState extends State<TheEventor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Column(
            children: [
              Text("WEDDING  UNVEILED",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.indigo
              ),),
            ],
          )),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(150.0),
            child: Container(
              child: Column(
                children: [
                  ElevatedButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.blue),
                  ),

                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewEventss()));
                  }, child: Text("View event")),
                  
                  SizedBox(height: 40,),
                  ElevatedButton(style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.blue)
                  ),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddEvent()));
                      }, child: Text("Add event")),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}
