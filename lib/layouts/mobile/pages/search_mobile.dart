import 'package:flutter/material.dart';

class SearchPageMobile extends StatelessWidget {
  const SearchPageMobile({Key? key, this.currentWidth}) : super(key: key);
  final currentWidth;


  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      width: double.infinity,
      child: Center(
        child: Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
