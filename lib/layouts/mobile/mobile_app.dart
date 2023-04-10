import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tedtalk/layouts/mobile/pages/home_mobile.dart';
import 'package:tedtalk/layouts/mobile/pages/podcast_mobile.dart';
import 'package:tedtalk/layouts/mobile/pages/profile_mobile.dart';
import 'package:tedtalk/layouts/mobile/pages/search_mobile.dart';

class MobileApp extends StatefulWidget {
  const MobileApp({Key? key}) : super(key: key);

  @override
  State<MobileApp> createState() => _MobileAppState();
}

class _MobileAppState extends State<MobileApp> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: bodyFunction(),
      backgroundColor: Colors.black,
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 700),
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
        index: _page,
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }

  Widget bodyFunction() {
    switch (_page) {
      case 0:
        return const HomePageMobile();
      case 1:
        return const PodcastPageMobile();
      case 2:
        return const SearchPageMobile();
      case 3:
        return const ProfilePageMobile();
      default:
        return Container();
    }
  }
}

/**
 * bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: const Color.fromRGBO(51, 49, 49, 1.0),
    items: const [
    BottomNavigationBarItem(
    icon: Icon(
    Icons.house_outlined,
    size: 24,
    ),
    label: ''
    ),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.headphones_outlined,
    size: 24,
    ),
    label: ''
    ),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.search,
    size: 24,
    ),
    label: ''
    ),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.person_2_outlined,
    size: 24,
    ),
    label: ''
    ),
    ],
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
    currentIndex: _page,
    onTap: (index){
    setState(() {
    _page = index;
    });
    },
    ),
 */
