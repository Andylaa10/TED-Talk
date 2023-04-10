import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../helper/mini_header.dart';
import '../../helper/video_suggestion.dart';
import '../../helper/video_suggestions_builder.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<VideoSuggestion> videoSuggestions = [
      const VideoSuggestion(
        imageHeight: 300,
        imageWidth: 600,
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
        imageHeight: 300,
        imageWidth: 600,
        textTop: 10,
        textLeft: 0,
        videoLength: '23:11',
      ),
      const VideoSuggestion(
        videoCaption:
            'In this beautiful world, many things can go wrong (diseases)',
        url:
            'https://talkstar-photos.s3.amazonaws.com/uploads/91fb476b-57fa-446f-93f2-8d879b4dc727/JohnDoerr_2018-embed.jpg',
        imageHeight: 300,
        imageWidth: 600,
        textTop: 10,
        textLeft: 0,
        videoLength: '15:41',
      ),
      const VideoSuggestion(
        videoCaption:
            'Can having less stuff, in less room, lead to more happiness?',
        url:
            'https://talkstar-photos.s3.amazonaws.com/uploads/30ee20be-078b-4630-a9e7-e7db3aac7825/GrahamHill_2011U-embed.jpg',
        imageHeight: 300,
        imageWidth: 600,
        textTop: 10,
        textLeft: 0,
        videoLength: '10:25',
      ),
    ];

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Your latest recommendations',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: CarouselSlider.builder(
                itemCount: videoSuggestions.length,
                options: CarouselOptions(
                  height: 430,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 0.65
                ),
                itemBuilder: (context, index, realIndex) {
                  final currentVideo = videoSuggestions[index];
                  return VideoSuggestion(
                      imageHeight: currentVideo.imageHeight,
                      url: currentVideo.url,
                      videoCaption: currentVideo.videoCaption,
                      imageWidth: currentVideo.imageWidth,
                      textTop: currentVideo.textTop,
                      textLeft: currentVideo.textLeft,
                      videoLength: currentVideo.videoLength);
                },
              ),
            ),
            const MiniHeader(header: 'More recommendations'),
            const VideoSuggestionsBuilder(),
            const Divider(
              color: Colors.black,
              thickness: 0,
              height: 20,
            ),
            const MiniHeader(header: 'Many more recommendations'),
            const VideoSuggestionsBuilder(),
            const Divider(
              color: Colors.black,
              thickness: 0,
              height: 20,
            ),
            const MiniHeader(header: 'Many many more recommendations'),
            const VideoSuggestionsBuilder(),
            const Divider(
              color: Colors.black,
              thickness: 0,
              height: 20,
            ),
            const MiniHeader(header: 'A lot more recommendations'),
            const VideoSuggestionsBuilder(),
            const Divider(
              color: Colors.black,
              thickness: 0,
              height: 20,
            ),
            const MiniHeader(header: 'A lot much more recommendations'),
            const VideoSuggestionsBuilder(),
            const Divider(
              color: Colors.black,
              thickness: 0,
              height: 20,
            ),
            const MiniHeader(header: 'More than a lot much more recommendations'),
            const VideoSuggestionsBuilder(),
            const Divider(
              color: Colors.black,
              thickness: 0,
              height: 20,
            ),
            const MiniHeader(header: 'The final of the more than a lot much more recommendations'),
            const VideoSuggestionsBuilder(),
          ],
        ),
      ),
    );
  }
}
