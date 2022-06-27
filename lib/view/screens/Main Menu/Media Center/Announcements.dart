import 'package:demo/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';

class Announcements extends StatefulWidget {
  const Announcements({Key? key}) : super(key: key);

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Announcements'),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Announcements'),
      ),
    );
  }
}
