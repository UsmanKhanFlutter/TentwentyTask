import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String? videoUrl;

  const VideoPlayerScreen({super.key, required this.videoUrl});

  @override
  VideoPlayerScreenState createState() => VideoPlayerScreenState();
}

class VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl.toString()))
          // _controller = VideoPlayerController.network(widget.videoUrl)
          ..initialize().then((_) {
            // Ensure the first frame is shown
            setState(() {});
          });
    _controller.play(); // Auto-play the video
    _controller.setLooping(true);
    // Optional: Loop the video
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
