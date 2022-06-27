import 'package:demo/view/screens/Main%20Menu/Administration/University%20President%20Office/Contact%20the%20President.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../widgets/appbar.dart';
import '../../../../widgets/drawer.dart';
import '../../../../widgets/list_items.dart';

class ContactOurOffice extends StatefulWidget {
  const ContactOurOffice({Key? key}) : super(key: key);

  @override
  State<ContactOurOffice> createState() => _ContactOurOfficeState();
}

class _ContactOurOfficeState extends State<ContactOurOffice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Contact US'),
      drawer: MyDrawer(),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Contact Info:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Column(
                children: [
                  row(
                    key: 'Email: ',
                    value: 'opu@nbu.edu.sa',
                    onTap: () async {
                      final Uri launchUri = Uri(
                        scheme: 'mailto',
                        path: "opu@nbu.edu.sa",
                      );
                      await launchUrl(launchUri);
                    },
                  ),
                  row(
                    key: 'Phone: ',
                    value: '+966-5-527-527',
                    onTap: () async {
                      final Uri launchUri = Uri(
                        scheme: 'tel',
                        path: "+966-5-527-527",
                      );
                      await launchUrl(launchUri);
                    },
                  ),
                  row(
                    key: 'Fax: ',
                    value: '+966-5-527-527',
                    onTap: () async {
                      final Uri launchUri = Uri(
                        scheme: 'tel',
                        path: "+966-5-527-527",
                      );
                      await launchUrl(launchUri);
                    },
                  ),
                  row(
                    key: 'Address: ',
                    value: 'NBU, Riyadh, Saudi Arabia',
                    onTap: () async {
                      final Uri launchUri = Uri(
                        scheme: 'geo',
                        path: "NBU, Arar, Saudi Arabia",
                      );
                      await launchUrl(launchUri);
                    },
                  ),
                  row(
                    key: 'Twitter: ',
                    value: '@NBU',
                    onTap: null,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(ContactPresident());
                    },
                    child: Text('Contact The President',
                        style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget row({required String key, required String value, Function? onTap}) =>
      Padding(
        padding: const EdgeInsets.only(left: 2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(key,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: onTap == null ? null : () => onTap(),
              child: Text(value, style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      );
}
