import 'ProviderState.dart';
import 'Pages/EventsList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_task/Design/Colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: transparentColor),
  );
  runApp(const Initial());
}

class Initial extends StatelessWidget {
  const Initial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      route: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Task",
        home: EventsListPage(),
      ),
    );
  }
}
