import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//models
import '../Models/character.dart';
//utilities
import '../Utilities/themes.dart';
//widgets
import './show_dialog.dart';

class CharacterDetailCard {
  static Future<void> viewCharacterDetail(
      BuildContext context, Character character) async {
    Size size = MediaQuery.of(context).size;
    Widget characterCard = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          character.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.network(
            character.url == ""
                ? "https://assets.website-files.com/633f08923c4c519693723aa5/633f08923c4c514c4b723b19_2516_Anywhere_Logo.png"
                : "https://duckduckgo.com${character.url}",
            width: size.width * 0.3,
          ),
        ),
        Text(
          "${character.description}",
          style: const TextStyle(fontSize: 15),
          textAlign: TextAlign.justify,
        ),
        CupertinoButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Done",
            style: TextStyle(
              color: Themes.themeColor1,
              fontSize: 18,
            ),
          ),
        )
      ],
    );
    await ShowDialog.viewDialog(context, characterCard);
  }
}
