import 'package:flutter/material.dart';
import 'package:interview_task/Design/Colors.dart';

class EventDetailsPage extends StatefulWidget {
  final String title;
  final String venue;
  final String dateTime;

  const EventDetailsPage({
    Key? key,
    required this.title,
    required this.venue,
    required this.dateTime,
  }) : super(key: key);

  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        title: Text(
          widget.title,
          maxLines: 4,
          style: TextStyle(
            fontSize: 18,
            color: blackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 23,
                  color: primaryColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: _mainBody(),
    );
  }

  Widget _mainBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10),
          const Divider(thickness: 2, indent: 25, endIndent: 25),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/images/Stadium.jpg",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            widget.dateTime,
            maxLines: 4,
            style: TextStyle(
              fontSize: 18,
              color: blackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            widget.venue,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
