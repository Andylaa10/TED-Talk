import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tedtalk/layouts/helper/mini_header.dart';
import 'package:tedtalk/layouts/helper/video_suggestions_builder.dart';

import '../../helper/video_suggestion.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({Key? key, this.currentWidth}) : super(key: key);
  final currentWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'TED',
                  style: TextStyle(
                      color: const Color.fromRGBO(253, 2, 2, 1.0),
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.paytoneOne().fontFamily,
                      fontSize: 60),
                ),
              ),
            ),
          ),
          const MiniHeader(header: 'Your latest recommendation'),
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
          const Divider(
            color: Colors.black,
            thickness: 0,
            height: 20,
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
    );
  }
}
