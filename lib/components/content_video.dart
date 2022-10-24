// ignore_for_file: prefer_final_fields, avoid_single_cascade_in_expression_statements, must_be_immutable

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ContentVideo extends StatefulWidget {
  ContentVideo({Key? key, required this.height, required this.width})
      : super(key: key);
  bool play = false;
  final double height;
  final double width;

  @override
  State<ContentVideo> createState() => _ContentVideoState();
}

class _ContentVideoState extends State<ContentVideo> {
  VideoPlayerController _videoController = VideoPlayerController.asset(
      'assets/video/benson_presentation_sign_language.mp4');
  @override
  void initState() {
    _videoController
          ..initialize().then((_) {
            setState(() {});
          })
        // ..setLooping(true)
        // ..initialize().then((_) => _videoController.play()).then((_) => _videoController.dispose())
        // ..initialize().then((_) => _videoController.play())
        // ..initialize().then((_) => Future.delayed(const Duration(seconds: 1))) 
        // ..initialize().then((_) => _videoController.dispose())
        ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: _videoController.value.aspectRatio,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        height: widget.height,
        width: widget.width,
        child: Stack(
          children: [
            _videoController.value.isInitialized
                ? VideoPlayer(_videoController)
                : Container(),
            Positioned(
              bottom: 10,
              right: 10,
              child: IconButton(
                splashColor: Colors.orange,
                splashRadius: 5,
                color: Colors.orange,
                onPressed: () {
                  setState(() {
                    _videoController.value.isPlaying
                        ? _videoController.pause()
                        : _videoController.play();
                    widget.play = !widget.play;
                  });
                },
                icon: _videoController.value.isPlaying
                    ? const Icon(Icons.pause)
                    : const Icon(Icons.play_arrow),
              ),
            ),
            BasicOverlayWidget(controller: _videoController),
          ],
        ),
      ),
    );
  }
}

class BasicOverlayWidget extends StatelessWidget {
  final VideoPlayerController controller;
  const BasicOverlayWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: buildIndicator(),
        ),
      ],
    );
  }

  Widget buildIndicator() => VideoProgressIndicator(controller,
      allowScrubbing: true,
      colors: const VideoProgressColors(playedColor: Colors.orange));
}
