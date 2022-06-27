import 'package:demo/view/widgets/appbar.dart';
import 'package:demo/view/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

class CouncilOrg extends StatefulWidget {
  const CouncilOrg({Key? key}) : super(key: key);

  @override
  State<CouncilOrg> createState() => _CouncilOrgState();
}

class _CouncilOrgState extends State<CouncilOrg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'الهيكل التنظيمي'),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Zoom(
            maxZoomWidth: 1800,
            maxZoomHeight: 1800,
            initZoom: 0.0,
            backgroundColor: Colors.white,
            child: Image.asset(
              'assets/images/council/org.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
