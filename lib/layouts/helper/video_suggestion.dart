import 'package:flutter/material.dart';
import 'package:tedtalk/layouts/helper/video_details.dart';

class VideoSuggestion extends StatelessWidget {
  const VideoSuggestion(
      {Key? key,
      required this.imageHeight,
      required this.url,
      required this.videoCaption,
      required this.imageWidth,
      required this.textTop,
      required this.textLeft,
      required this.videoLength})
      : super(key: key);
  final double imageHeight;
  final double imageWidth;
  final String url;
  final String videoCaption;
  final double textTop;
  final double textLeft;
  final String videoLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => {
            showDialog(
              context: context,
              builder: (context) => VideoDetails(title: videoCaption, url: url),
            ),
          },
          child: Tooltip(
            message: 'Play video',
            child: Container(
              width: imageWidth,
              height: imageHeight,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 50,
                    height: 20,
                    color: const Color.fromRGBO(40, 40, 40, 0.8),
                    child: Center(
                      child: Text(
                        videoLength,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: imageWidth,
          child: Padding(
            padding: EdgeInsets.only(left: textLeft, top: textTop),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                videoCaption,
                style: const TextStyle(color: Colors.white),
                maxLines: 2,
                softWrap: true,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/**
 * Padding(
    padding: EdgeInsets.only(left: textLeft, top: textTop),
    child: Align(
    alignment: Alignment.centerLeft,
    child: Text(
    videoCaption,
    style: const TextStyle(color: Colors.white),
    )),
    ),
 */
