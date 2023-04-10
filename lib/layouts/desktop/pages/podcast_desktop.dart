import 'package:flutter/material.dart';

class PodcastPageDesktop extends StatelessWidget {
  const PodcastPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: const Center(
          child: Text(
        'Podcast',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
