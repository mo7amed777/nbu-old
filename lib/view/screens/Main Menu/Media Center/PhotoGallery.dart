import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/drawer.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({Key? key}) : super(key: key);

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Photo Gallery'),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Photo Gallery'),
      ),
    );
  }
}
