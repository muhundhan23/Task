import '../Design/Colors.dart';
import '../Providers/Events.dart';
import '../Models/EventsList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'EventsDetails.dart';

class EventsListPage extends StatefulWidget {
  const EventsListPage({Key? key}) : super(key: key);

  @override
  State<EventsListPage> createState() => _EventsListPageState();
}

class _EventsListPageState extends State<EventsListPage> {
  @override
  void initState() {
    super.initState();
    context.read<EventsState>().getEvents();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.read<EventsState>();
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: TextField(
          controller: provider.search,
          textCapitalization: TextCapitalization.sentences,
          onChanged: (search) {
            provider.searchEvents(search);
          },
          style: TextStyle(color: orangeColor),
          cursorColor: orangeColor,
          decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              color: orangeColor,
            ),
            hintText: "Search for events",
            hintStyle: TextStyle(
              color: orangeColor,
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              icon: Icon(
                Icons.cancel,
                color: orangeColor,
                size: 23,
              ),
              onPressed: () {
                FocusScope.of(context).unfocus();
                provider.search.clear();
                provider.searchEvent.clear();
              },
            ),
          ),
        ],
      ),
      body: _mainBody(),
    );
  }

  Widget _mainBody() {
    final provider = context.watch<EventsState>();
    return provider.eventsLoading == true
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : provider.searchEvent.isNotEmpty
            ? ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: provider.searchEvent.length,
                itemBuilder: (context, index) {
                  return _eventDisplay(provider.searchEvent, index);
                },
                separatorBuilder: (context, index) {
                  return const Divider(thickness: 2);
                },
              )
            : ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: provider.events.length,
                itemBuilder: (context, index) {
                  return _eventDisplay(provider.events, index);
                },
                separatorBuilder: (context, index) {
                  return const Divider(thickness: 2);
                },
              );
  }

  Widget _eventDisplay(List<Events> events, index) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EventDetailsPage(
            title: "${events[index].title}",
            venue:
                "${events[index].venue?.state}, ${events[index].venue?.name}",
            dateTime: "${events[index].datetimeLocal}",
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/images/Stadium.jpg",
                width: 80,
                height: 50,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "${events[index].title}",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${events[index].venue?.state}, ${events[index].venue?.name}",
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${events[index].datetimeLocal}",
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
