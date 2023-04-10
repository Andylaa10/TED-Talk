import 'package:flutter/material.dart';

class ProfilePageMobile extends StatelessWidget {
  const ProfilePageMobile({Key? key, this.currentWidth}) : super(key: key);
  final currentWidth;


  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      width: double.infinity,
      child: Center(
        child: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
