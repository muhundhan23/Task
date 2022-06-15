import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Providers/Events.dart';

class ProviderScope extends StatelessWidget {
  final Widget route;

  const ProviderScope({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => EventsState()),
      ],
      child: route,
    );
  }
}
