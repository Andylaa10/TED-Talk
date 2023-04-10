import 'package:flutter/material.dart';

class PodcastPageMobile extends StatelessWidget {
  const PodcastPageMobile({Key? key, this.currentWidth}) : super(key: key);
  final currentWidth;

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      width: double.infinity,
      child: Center(
        child: Text(
          'Podcasts',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
