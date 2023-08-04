import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//utilities
import '../Utilities/themes.dart';
import '../Utilities/android_app.dart';
import '../Utilities/ios_app.dart';
//widgets
import '../Widgets/curved_clip.dart';
//screens
import './list.dart';

class HomeScreen extends StatelessWidget {
  static const String homeScreenRoute = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
      child: Column(
        children: [
          CurvedClip(height: height / 3),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Platform.isAndroid
                      ? AndriodApp.homePageTitle
                      : IOSApp.homePageTitle,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                CupertinoButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Let's go inside  ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Themes.themeColor1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Icon(
                        CupertinoIcons.chevron_right_circle_fill,
                        size: 20,
                        color: Themes.themeColor1,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(ListScreen.listScreenRoute);
                  },
                ),
              ],
            ),
          ),
          Transform.flip(
            flipY: true,
            child: CurvedClip(height: (height / 3)),
          ),
        ],
      ),
    );
  }
}
