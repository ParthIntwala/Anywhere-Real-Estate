import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//model
import '../Models/character.dart';
//utilities
import '../Utilities/themes.dart';
//widgets
import './character_detail_card.dart';

class PhoneItemDetail extends StatelessWidget {
  final Character character;
  const PhoneItemDetail({required super.key, required this.character});

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
          width: isAndroid ? 2 : 0,
        ),
      ),
      color: isAndroid ? Colors.white : Themes.themeColor2,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    "${character.description}",
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
                CupertinoButton(
                  onPressed: () async {
                    await CharacterDetailCard.viewCharacterDetail(
                        context, character);
                  },
                  child: Icon(
                    CupertinoIcons.info,
                    color: Themes.themeColor1,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
