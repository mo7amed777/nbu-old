import 'package:chewie/chewie.dart';
import 'package:demo/view/constants/consts.dart';
import 'package:demo/view/widgets/appbar.dart';
import 'package:demo/view/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Administration extends StatefulWidget {
  const Administration({Key? key}) : super(key: key);

  @override
  State<Administration> createState() => _AdministrationState();
}

class _AdministrationState extends State<Administration> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(VideoURL);

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true,
      looping: true,
      autoInitialize: true,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Administration'),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          Card(
            elevation: 5.0,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'We aspire to become a distinguished and credible university, recognized for our academic programs that build competency and support research and innovation—and for providing services across the region and the Kingdom. We are a regionally serving, comprehensive university committed to educational excellence. Guided by our core values, heritage, and place, We deliver innovative educational programs characterized by outcomes that leverage the human, economic, cultural, and natural resources for the Northern Borders Region and beyond.',
                style: TextStyle(fontSize: 16.0, height: 1.5),
              ),
            ),
          ),
          Card(
            elevation: 5.0,
            margin: EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Chewie(
                controller: _chewieController,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
