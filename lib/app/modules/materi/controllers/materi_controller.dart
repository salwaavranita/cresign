import 'package:chewie/chewie.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pod_player/pod_player.dart';

class MateriController extends GetxController {
  late ChewieController chewieController;

  ChewieController setStreamAnime(String link) {
    return chewieController = ChewieController(
      videoPlayerController: VideoPlayerController.asset(link),
      aspectRatio: 16/9,
      autoPlay: false,
      autoInitialize: true,
      looping: true
    );
  }

  void downloadMateri(String name,String link) async {
    await FileSaver.instance.saveFile(
        name: "${name}.pdf",
        link: LinkDetails(link: link));
  }

  @override
  void onClose() {
    chewieController.pause();
    chewieController.dispose();
    super.onClose();
  }

  RxBool isCheck = false.obs;


  var currentLevel = 0.obs;

  ScrollController scrollController = ScrollController();
}
