import 'package:flutter/material.dart';

AppBar appBar({required String title, List<Widget> actions = const []}) {
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.green[800],
    elevation: 0.0,
    actions: actions,
  );
}
