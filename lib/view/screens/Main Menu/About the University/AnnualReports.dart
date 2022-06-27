import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/download_card.dart';
import '../../../widgets/drawer.dart';

class AnnualReports extends StatefulWidget {
  const AnnualReports({Key? key}) : super(key: key);

  @override
  State<AnnualReports> createState() => _AnnualReportsState();
}

class _AnnualReportsState extends State<AnnualReports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: 'Annual Reports',
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          SizedBox(height: 20),
          DownloadCard(
              title: 'التقرير السنوي للعام الجامعي 1436 – 1437 هـ ',
              download: () {}),
          DownloadCard(
              title: 'التقرير السنوي للعام الجامعي 1437 – 1438 هـ',
              download: () {}),
          DownloadCard(
              title: 'التقرير السنوي للعام الجامعي 1438 – 1439 هـ',
              download: () {}),
          DownloadCard(
              title: 'التقرير السنوي للعام الجامعي 1439 – 1440 هـ',
              download: () {}),
          DownloadCard(
              title: 'التقرير السنوي للعام الجامعي 1440 - 1441 هـ',
              download: () {}),
        ],
      ),
    );
  }
}
