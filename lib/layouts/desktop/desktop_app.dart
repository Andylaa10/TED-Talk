import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tedtalk/layouts/desktop/pages/home_desktop.dart';
import 'package:tedtalk/layouts/desktop/pages/podcast_desktop.dart';
import 'package:tedtalk/layouts/desktop/pages/profile_desktop.dart';
import 'package:tedtalk/layouts/desktop/pages/search_desktop.dart';

import '../helper/video_suggestion.dart';

class DesktopApp extends StatefulWidget {
  const DesktopApp({Key? key}) : super(key: key);

  @override
  State<DesktopApp> createState() => _DesktopAppState();
}

class _DesktopAppState extends State<DesktopApp> with TickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: Text(
            'TED',
            style: TextStyle(
                color: const Color.fromRGBO(253, 2, 2, 1.0),
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.paytoneOne().fontFamily,
                fontSize: 60),
          ),
          backgroundColor: Colors.grey[900]!,
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: const [
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
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomePageDesktop(),
          PodcastPageDesktop(),
          SearchPageDesktop(),
          ProfilePageDesktop()
        ],
      ),
    );
  }
}

