import 'package:flutter/material.dart';

class SearchPageDesktop extends StatelessWidget {
  const SearchPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: const Center(
        child: Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
