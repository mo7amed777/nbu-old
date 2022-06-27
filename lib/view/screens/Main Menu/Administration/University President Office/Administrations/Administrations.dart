import 'package:demo/view/widgets/appbar.dart';
import 'package:demo/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Administrations extends StatefulWidget {
  const Administrations({Key? key}) : super(key: key);

  @override
  State<Administrations> createState() => _AdministrationsState();
}

class _AdministrationsState extends State<Administrations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Administrations'),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Administrations'),
      ),
    );
  }
}
