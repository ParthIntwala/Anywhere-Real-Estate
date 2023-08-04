import 'dart:io';
import 'package:flutter/material.dart';

//model
import '../Models/character.dart';
//utilities
import '../Utilities/themes.dart';

class TabletItemDetail extends StatelessWidget {
  final Character character;
  const TabletItemDetail({required super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    bool isAndroid = Platform.isAndroid;
    return Card(
      elevation: 10,
      margin: const EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Themes.themeColor1,
          width: 2,
        ),
      ),
      color: isAndroid ? Colors.white : Themes.themeColor2,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "${character.description}",
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 15),
            Image.network(
              character.url == ""
                  ? "https://assets.website-files.com/633f08923c4c519693723aa5/633f08923c4c514c4b723b19_2516_Anywhere_Logo.png"
                  : "https://duckduckgo.com${character.url}",
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
