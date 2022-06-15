import 'dart:convert';
import 'dart:developer';
import '../Models/EventsList.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EventsState extends ChangeNotifier {
  bool eventsLoading = true;
  bool eventDetailsLoading = true;
  List<Events> events = [];
  List<Events> searchEvent = [];
  TextEditingController search = TextEditingController();

  getEvents() async {
    String url =
        "https://api.seatgeek.com/2/events?client_id=Mjc0NTQyMzh8MTY1NTI5MTAyOC4xNzAyOTI5";
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      eventsLoading = false;
      var items = res.body;
      var responseData = json.decode(items);
      EventsModel details = EventsModel.fromJson(responseData);
      events = details.events!;
      log("Get Events Api Call");
    }
    notifyListeners();
  }

  searchEvents(search) async {
    String url =
        "https://api.seatgeek.com/2/events?client_id=Mjc0NTQyMzh8MTY1NTI5MTAyOC4xNzAyOTI5&q=$search";
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var items = res.body;
      var responseData = json.decode(items);
      EventsModel details = EventsModel.fromJson(responseData);
      searchEvent = details.events!;
      log("Search Events Api Call");
    }
    notifyListeners();
  }
}
