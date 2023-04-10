import 'package:flutter/material.dart';

class PodcastPageTablet extends StatelessWidget {
  const PodcastPageTablet({Key? key}) : super(key: key);

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