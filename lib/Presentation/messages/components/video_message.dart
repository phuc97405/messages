import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:messages/Shared/constants.dart';

class VideoMessage extends GetWidget {
  const VideoMessage({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.45, //45%total width
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(alignment: Alignment.center, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset('assets/images/video.jpeg'),
          ),
          Container(
            width: 25,
            height: 25,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
            child: Icon(
              Icons.play_arrow,
              size: 15,
              color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}
