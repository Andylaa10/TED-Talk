import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helper/mini_header.dart';
import '../../helper/video_suggestion.dart';
import '../../helper/video_suggestions_builder.dart';

class HomePageTablet extends StatelessWidget {
  const HomePageTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            height: 100,
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
        ),
        Expanded(
          flex: 8,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    MiniHeader(header: 'Your latest recommendation'),
                    VideoSuggestion(
                      imageHeight: 300,
                      imageWidth: 600,
                      url:
                      'https://talkstar-photos.s3.amazonaws.com/uploads/7adc2250-de27-4116-b4ea-6fb4637ca98a/LeraBoroditsky_2017W-embed.jpg',
                      videoCaption: 'A love letter to realism in the time of grief',
                      textLeft: 20,
                      textTop: 10,
                      videoLength: '12:12',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      MiniHeader(header: 'More recommendations'),
                      VideoSuggestionsBuilder(),
                      Divider(
                        color: Colors.black,
                        thickness: 0,
                        height: 20,
                      ),
                      MiniHeader(header: 'Many more recommendations'),
                      VideoSuggestionsBuilder(),
                      Divider(
                        color: Colors.black,
                        thickness: 0,
                        height: 20,
                      ),
                      MiniHeader(header: 'Many many more recommendations'),
                      VideoSuggestionsBuilder(),
                      Divider(
                        color: Colors.black,
                        thickness: 0,
                        height: 20,
                      ),
                      MiniHeader(header: 'A lot more recommendations'),
                      VideoSuggestionsBuilder(),
                      Divider(
                        color: Colors.black,
                        thickness: 0,
                        height: 20,
                      ),
                      MiniHeader(header: 'A lot much more recommendations'),
                      VideoSuggestionsBuilder(),
                      Divider(
                        color: Colors.black,
                        thickness: 0,
                        height: 20,
                      ),
                      MiniHeader(header: 'More than a lot much more recommendations'),
                      VideoSuggestionsBuilder(),
                      Divider(
                        color: Colors.black,
                        thickness: 0,
                        height: 20,
                      ),
                      MiniHeader(header: 'The final of the more than a lot much more recommendations'),
                      VideoSuggestionsBuilder(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}