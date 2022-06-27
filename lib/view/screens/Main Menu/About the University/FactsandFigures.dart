import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/drawer.dart';

class FactsandFigures extends StatefulWidget {
  const FactsandFigures({Key? key}) : super(key: key);

  @override
  State<FactsandFigures> createState() => _FactsandFiguresState();
}

class _FactsandFiguresState extends State<FactsandFigures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: 'Facts and Figures',
      ),
      drawer: MyDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          card(title: 'Students', number: 16154),
          card(title: 'Colleges', number: 16154),
          card(title: 'Alumni', number: 16154),
          card(title: 'External Scholarships', number: 16154),
          card(title: 'Staff Members', number: 16154),
          card(title: 'Faculty Members', number: 16154),
        ],
      ),
    );
  }

  Widget card({required String title, required int number}) => Card(
        margin: EdgeInsets.all(4.0),
        elevation: 4.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(number.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                      fontSize: 20)),
            ),
            Text(title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800],
                    fontSize: 18)),
          ],
        ),
      );
}
