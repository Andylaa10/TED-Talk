import 'package:flutter/material.dart';
import 'package:tedtalk/ted_talk.dart';

import 'customer_scroll_behavoir.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      scrollBehavior: MyCustomScrollBehavior(), //Makes it able to scroll on the web and mobile
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const TedTalk(),
    );
  }
}
