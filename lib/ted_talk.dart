import 'package:flutter/material.dart';
import 'package:tedtalk/layouts/mobile/mobile_app.dart';
import 'package:tedtalk/layouts/tablet/tablet_app.dart';
import 'package:tedtalk/responsive/responsive_layout.dart';

import 'layouts/desktop/desktop_app.dart';

class TedTalk extends StatefulWidget {
  const TedTalk({Key? key}) : super(key: key);

  @override
  State<TedTalk> createState() => _TedTalkState();
}

class _TedTalkState extends State<TedTalk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileApp: const MobileApp(),
          tabletApp: const TabletApp(),
          desktopApp: const DesktopApp(),)
    );
  }
}
