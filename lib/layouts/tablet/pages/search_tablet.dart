import 'package:flutter/material.dart';

class SearchPageTablet extends StatelessWidget {
  const SearchPageTablet({Key? key}) : super(key: key);

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
