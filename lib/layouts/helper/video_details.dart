import 'package:flutter/material.dart';
import 'package:tedtalk/layouts/helper/video_suggestion.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails({Key? key, required this.title, required this.url})
      : super(key: key);
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
      body: (queryData.size.width <= 600)
          ? VideoSuggestion(
              imageHeight: 300,
              imageWidth: double.infinity,
              url: url,
              videoCaption: 'A love letter to realism in the time of grief',
              textLeft: 20,
              textTop: 10,
              videoLength: '12:12',
            )
          :  (queryData.size.width > 600 && queryData.size.width <= 1200)
              ? VideoSuggestion(
                  imageHeight: 500,
                  imageWidth: double.infinity,
                  url: url,
                  videoCaption: 'A love letter to realism in the time of grief',
                  textLeft: 20,
                  textTop: 10,
                  videoLength: '12:12',
                )
              : VideoSuggestion(
                  imageHeight: 620,
                  imageWidth: double.infinity,
                  url: url,
                  videoCaption: 'A love letter to realism in the time of grief',
                  textLeft: 20,
                  textTop: 10,
                  videoLength: '12:12',
                ),
    );
  }
}
