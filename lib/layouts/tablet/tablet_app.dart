import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tedtalk/layouts/tablet/pages/home_tablet.dart';
import 'package:tedtalk/layouts/tablet/pages/podcast_tablet.dart';
import 'package:tedtalk/layouts/tablet/pages/profile_tablet.dart';
import 'package:tedtalk/layouts/tablet/pages/search_tablet.dart';

class TabletApp extends StatefulWidget {
  const TabletApp({Key? key}) : super(key: key);

  @override
  State<TabletApp> createState() => _TabletAppState();
}

class _TabletAppState extends State<TabletApp> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: bodyFunction(),
      backgroundColor: Colors.black,
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 700),
        animationCurve: Curves.easeIn,
        backgroundColor: Colors.transparent,
        color: Colors.grey[900]!,
        items: const [
          Icon(
            Icons.house_outlined,
            size: 24,
            color: Colors.white,
          ),
          Icon(
            Icons.headphones_outlined,
            size: 24,
            color: Colors.white,

          ),
          Icon(
            Icons.search,
            size: 24,
            color: Colors.white,

          ),
          Icon(
            Icons.person_2_outlined,
            size: 24,
            color: Colors.white,

          ),
        ],
        index: page,
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
      ),
    );
  }

  Widget bodyFunction() {
    switch (page) {
      case 0:
        return const HomePageTablet();
      case 1:
        return const PodcastPageTablet();
      case 2:
        return const SearchPageTablet();
      case 3:
        return const ProfilePageTablet();
      default:
        return Container();
    }
  }
}
