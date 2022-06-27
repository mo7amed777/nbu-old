import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/drawer.dart';

class NBUinMedia extends StatefulWidget {
  const NBUinMedia({Key? key}) : super(key: key);

  @override
  State<NBUinMedia> createState() => _NBUinMediaState();
}

class _NBUinMediaState extends State<NBUinMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'NBU in Media'),
      drawer: MyDrawer(),
      body: Center(
        child: Text('NBU in Media'),
      ),
    );
  }
}
