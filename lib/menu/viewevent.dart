import 'package:eventapp/services/serviceevent.dart';
import 'package:flutter/material.dart';
import 'package:eventapp/files/startup.dart';


class ViewEventss extends StatefulWidget {
  const ViewEventss({super.key});

  @override
  State<ViewEventss> createState() => _ViewEventssState();
}

class _ViewEventssState extends State<ViewEventss> {

  Future<List<Eventsday>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=EventApiService().getEvents();
  }
  Widget build(BuildContext context) {

    return Scaffold(

        body: FutureBuilder(
            future: data,
            builder: (context,snapshot){
              if(snapshot.hasData  && snapshot.data!.isNotEmpty){
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (value,index){
                      return Card(
                        child:  Column(
                          children: [
                            ListTile(
                              title: Center(
                                child: Text(" Event_Name   : "+snapshot.data![index].eventName,style: TextStyle(
                                    fontSize: 30
                                ),),
                              ),
                              subtitle: Text(" Event_Description  : "+snapshot.data![index].eventDescription+
                                  "\n"+" Event_Venue    : "+snapshot.data![index].eventVenue+
                                  "\n"+" Event_Date  : "+snapshot.data![index].eventDate),


                              leading: CircleAvatar(
                                child: Icon(Icons.person),
                              ),
                            )
                          ],
                        ) ,
                      );
                    });

              }
              else{
                return Center(
                  child: Text("Loading page... ",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.red[900]
                  ),),
                );
              }
            })
    );
  }
}




