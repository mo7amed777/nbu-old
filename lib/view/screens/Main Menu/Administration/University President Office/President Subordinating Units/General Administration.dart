import 'package:demo/view/widgets/list_items.dart';
import 'package:demo/view/widgets/list_tile.dart';
import 'package:flutter/material.dart';

import '../../../../../widgets/appbar.dart';
import '../../../../../widgets/drawer.dart';

class GeneralAdministration extends StatefulWidget {
  const GeneralAdministration({Key? key}) : super(key: key);

  @override
  State<GeneralAdministration> createState() => _GeneralAdministrationState();
}

class _GeneralAdministrationState extends State<GeneralAdministration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          title:
              'General Administration of Strategic Planning and Vision Realization'),
      drawer: MyDrawer(),
      body: ListView(
        children: const <Widget>[
          MyListTile(
              title: 'Goal',
              subtitle:
                  "Building the university’s Strategic and Operational Plan and ensuring consistency of the university’s plans and objectives with development goals and Vision 2030."),
          ListItems(
            title: 'Tasks: ',
            items: [
              "Prepare the office’s activities plans and follow up on their implementation after approval.",
              "Facilitate obtaining data and information by advisors in specialized units.",
              "Receive advisors’ reports, print them, organize, and present them to the President.",
              "Follow up on advisors’ contracts and notify the President of any new developments regarding them.",
              "Coordinate visits and make necessary reservations for advisors with the relevant units.",
              "Present advisors’ performance evaluation results regularly to them and the President.",
              "Disburse advisors’ rewards and follow up on financial matters with the Financial Affairs Department.",
              "Determine the office’s needs regarding human resources, equipment, and materials, and follow up on their provision.",
              "Determine the training needs of the office staff to nominate them for the appropriate training programs.",
              "Prepare periodic reports on the office’s activities, achievements, and proposals to develop performance.",
              "Do any other tasks assigned to it within its limits.",
            ],
          ),
        ],
      ),
    );
  }
}
