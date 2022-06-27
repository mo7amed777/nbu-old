import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/drawer.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Events'),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Events'),
      ),
    );
  }
}
