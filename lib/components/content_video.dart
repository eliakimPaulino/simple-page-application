// ignore_for_file: prefer_final_fields, avoid_single_cascade_in_expression_statements, must_be_immutable

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ContentVideoApresentacao extends StatefulWidget {
  ContentVideoApresentacao({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  bool play = false;
  final double height;
  final double width;

  @override
  State<ContentVideoApresentacao> createState() =>
      _ContentVideoApresentacaoState();
}

class _ContentVideoApresentacaoState extends State<ContentVideoApresentacao> {
  VideoPlayerController _videoController =
      VideoPlayerController.asset('assets/video/libras_apresentacao.mp4');
      // VideoPlayerController.asset('assets/video/libras_apresentacao.mp4');
  @override
  void initState() {
    _videoController
      ..initialize().then((_) {
        setState(() {});
      });
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

class ContentVideoConsignado extends StatefulWidget {
  ContentVideoConsignado({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  bool play = false;
  final double height;
  final double width;

  @override
  State<ContentVideoConsignado> createState() => _ContentVideoConsignadoState();
}

class _ContentVideoConsignadoState extends State<ContentVideoConsignado> {
  VideoPlayerController _videoController =
      VideoPlayerController.asset('assets/video/libras_consignado.mp4');
  @override
  void initState() {
    _videoController
      ..initialize().then((_) {
        setState(() {});
      });
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

class ContentVideoInss extends StatefulWidget {
  ContentVideoInss({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  bool play = false;
  final double height;
  final double width;

  @override
  State<ContentVideoInss> createState() => _ContentVideoInssState();
}

class _ContentVideoInssState extends State<ContentVideoInss> {
  VideoPlayerController _videoController =
      VideoPlayerController.asset('assets/video/libras_inss.mp4');
  @override
  void initState() {
    _videoController
      ..initialize().then((_) {
        setState(() {});
      });
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

class ContentVideoLuz extends StatefulWidget {
  ContentVideoLuz({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  bool play = false;
  final double height;
  final double width;

  @override
  State<ContentVideoLuz> createState() => _ContentVideoLuzState();
}

class _ContentVideoLuzState extends State<ContentVideoLuz> {
  VideoPlayerController _videoController =
      VideoPlayerController.asset('assets/video/libras_luz.mp4');
  @override
  void initState() {
    _videoController
      ..initialize().then((_) {
        setState(() {});
      });
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

class ContentVideoBoleto extends StatefulWidget {
  ContentVideoBoleto({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  bool play = false;
  final double height;
  final double width;

  @override
  State<ContentVideoBoleto> createState() => _ContentVideoBoletoState();
}

class _ContentVideoBoletoState extends State<ContentVideoBoleto> {
  VideoPlayerController _videoController =
      VideoPlayerController.asset('assets/video/libras_boleto.mp4');
  @override
  void initState() {
    _videoController
      ..initialize().then((_) {
        setState(() {});
      });
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
