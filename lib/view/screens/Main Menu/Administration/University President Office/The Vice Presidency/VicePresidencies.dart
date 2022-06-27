import 'package:demo/view/widgets/appbar.dart';
import 'package:demo/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../../../../../widgets/media_card.dart';

class VicePresidencies extends StatefulWidget {
  const VicePresidencies({Key? key}) : super(key: key);

  @override
  State<VicePresidencies> createState() => _VicePresidenciesState();
}

class _VicePresidenciesState extends State<VicePresidencies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Vice-Presidencies'),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          MediaCard(
            title: 'The Vice Presidency',
            subtitle: 'More ...',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {},
          ),
          MediaCard(
            title: 'Delete',
            subtitle: 'More ...',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              //TODO Navigate to News screen
            },
          ),
          MediaCard(
            title: 'The Vice Presidency of Academic Affairs',
            subtitle: 'More ...',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              //TODO Navigate to Events screen
            },
          ),
          MediaCard(
            title:
                'The Vice Presidency of Graduate Studies and Scientific Research',
            subtitle: 'More ...',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              //TODO implement Academic Calendar screen
            },
          ),
          MediaCard(
            title:
                'The Vice Presidency of Development, Quality, and Community Service',
            subtitle: 'More ...',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              //TODO Navigate to Photo Gallery screen
            },
          ),
          MediaCard(
            title: 'The Vice Presidency of Female Students Affairs',
            subtitle: 'More ...',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              //TODO Navigate to Video Gallery screen
            },
          ),
          MediaCard(
            title: 'The Vice Presidency of Branches',
            subtitle: 'More ...',
            image: 'assets/images/media/placeholder.jpg',
            onTap: () {
              //TODO implement Open Data screen
            },
          ),
        ],
      ),
    );
  }
}
