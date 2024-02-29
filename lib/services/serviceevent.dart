import 'dart:html';

import 'package:eventapp/files/startup.dart';
import 'package:http/http.dart' as http;
class EventApiService{
  Future<List<Eventsday>> getEvents() async{
    var client=http.Client();
    var apiUrl= Uri.parse("http://35.170.103.9:3009/events");
    var response=await client.get(apiUrl);
    if (response.statusCode==200){
      return eventsdayFromJson(response.body);

    }else{
      return[];
    }
  }
}

  