import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/widgets/share_button_widget.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: size.width * 0.5,
          height: size.height * 0.5,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: FlickVideoPlayer(flickManager: flickManager),
                ),
              ),
              const SizedBox(height: 10),
              ShareButtonWidget(
                onPressed: () {
                  Share.share(
                      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
