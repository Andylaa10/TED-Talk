import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileApp;
  final Widget tabletApp;
  final Widget desktopApp;

  ResponsiveLayout({required this.mobileApp, required this.tabletApp, required this.desktopApp});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains){
      if(constrains.maxWidth <= 600){
        return mobileApp;
      }else if(constrains.maxWidth > 600 && constrains.maxWidth <= 1200){
        return tabletApp;
      }else{
        return desktopApp;
      }
    });
  }
}
