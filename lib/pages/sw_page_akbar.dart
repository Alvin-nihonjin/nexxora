import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:video_player/video_player.dart';

class StoryPage extends StatefulWidget {
  final String name;
  final String imgUrl;
  final String vdsw;

  const StoryPage({
    super.key,
    required this.name,
    required this.imgUrl,
    required this.vdsw,
  });

  @override
  State<StoryPage> createState() => _StoryPageState();
}

late VideoPlayerController _videoPlayerController;
ChewieController? _chewieController;

class _StoryPageState extends State<StoryPage> {
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.vdsw);

    _videoPlayerController.initialize().then((_) {
      setState(() {
        _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController,
          autoPlay: true,
          looping: true,
        );
      });
    });
  }

  //@override
  //void dispose() {
   // _videoPlayerController.dispose();
   // _chewieController?.dispose();
    //super.dispose();
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          _chewieController != null &&
                  _chewieController!.videoPlayerController.value.isInitialized
              ? Chewie(controller: _chewieController!)
              : const CircularProgressIndicator(),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(widget.imgUrl),
                    ),
                    SizedBox(width: 10),
                    Text(
                      widget.name,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                    size: 28,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
