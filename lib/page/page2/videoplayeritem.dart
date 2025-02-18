import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class Myvideoplayer extends StatefulWidget {
  const Myvideoplayer({super.key});

  @override
  State<Myvideoplayer> createState() => _MyvideoplayerState();
}

class _MyvideoplayerState extends State<Myvideoplayer> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    videoPlayerController =
        VideoPlayerController.asset('../../assets/videos/vid-1.mp4');
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      allowFullScreen: true,
      looping: true,
      autoPlay: true,
      aspectRatio: 9 / 16,
    );
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chewieController != null
          ? SafeArea(
              child: Chewie(controller: chewieController!),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
