import 'package:flutter/material.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/drawer.dart';

class VideoGallery extends StatefulWidget {
  const VideoGallery({Key? key}) : super(key: key);

  @override
  State<VideoGallery> createState() => _VideoGalleryState();
}

class _VideoGalleryState extends State<VideoGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Video Gallery'),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Video Gallery'),
      ),
    );
  }
}
