import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tedtalk/layouts/helper/video_suggestion.dart';

class VideoSuggestionsBuilder extends StatelessWidget {
  const VideoSuggestionsBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    List<VideoSuggestion> videoSuggestions = [
      const VideoSuggestion(
        imageHeight: 200,
        imageWidth: 300,
        url:
        'https://talkstar-photos.s3.amazonaws.com/uploads/7adc2250-de27-4116-b4ea-6fb4637ca98a/LeraBoroditsky_2017W-embed.jpg',
        videoCaption: 'A love letter to realism in the time of grief',
        textLeft: 20,
        textTop: 10,
        videoLength: '12:12',
      ),
      const VideoSuggestion(
        videoCaption: 'This is how we can solve homelessness',
        url:
            'https://pi.tedcdn.com/r/talkstar-photos.s3.amazonaws.com/uploads/d9aa2e0c-70bf-46e8-ab13-5657d5f3bd4a/SusanDavid_2017W-embed.jpg?u%5Br%5D=2&u%5Bs%5D=0.5&u%5Ba%5D=0.8&u%5Bt%5D=0.03&quality=82w=640',
        imageHeight: 200,
        imageWidth: 300,
        textTop: 10,
        textLeft: 0,
        videoLength: '23:11',
      ),
      const VideoSuggestion(
        videoCaption:
            'In this beautiful world, many things can go wrong (diseases)',
        url:
            'https://talkstar-photos.s3.amazonaws.com/uploads/91fb476b-57fa-446f-93f2-8d879b4dc727/JohnDoerr_2018-embed.jpg',
        imageHeight: 200,
        imageWidth: 300,
        textTop: 10,
        textLeft: 0,
        videoLength: '15:41',
      ),
      const VideoSuggestion(
        videoCaption:
            'Can having less stuff, in less room, lead to more happiness?',
        url:
            'https://talkstar-photos.s3.amazonaws.com/uploads/30ee20be-078b-4630-a9e7-e7db3aac7825/GrahamHill_2011U-embed.jpg',
        imageHeight: 200,
        imageWidth: 300,
        textTop: 10,
        textLeft: 0,
        videoLength: '10:25',
      ),
    ];
    return Container(
      color: Colors.black,
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          videoSuggestions.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: videoSuggestions[index],
          ),
        ),
      ),
    );
  }
}
