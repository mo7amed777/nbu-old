import 'package:demo/view/widgets/download_card.dart';
import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/drawer.dart';

class StratigicPlan extends StatefulWidget {
  const StratigicPlan({Key? key}) : super(key: key);

  @override
  State<StratigicPlan> createState() => _StratigicPlanState();
}

class _StratigicPlanState extends State<StratigicPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: 'Strategic Plan 2020-2025',
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          SizedBox(height: 20),
          DownloadCard(title: 'الخطة الإستراتيجية لجامعة الحدود الشمالية',
              download: () {}),
          DownloadCard(title: 'Northern Border University Strategic Plan',
              download: () {}),

        ],
      ),
    );
  }
}
