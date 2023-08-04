import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//utilities
import '../Utilities/themes.dart';

class ShowDialog {
  static Future<void> viewDialog(BuildContext context, Widget child) async {
    return await showCupertinoDialog(
      context: context,
      builder: (ctx) => Dialog(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          side: BorderSide(
            color: Themes.themeColor1,
            width: 4,
          ),
        ),
        shadowColor: Themes.themeColor1,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 20,
          ),
          child: child,
        ),
      ),
    );
  }
}
