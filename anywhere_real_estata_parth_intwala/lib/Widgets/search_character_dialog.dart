import 'package:flutter/cupertino.dart';

//models
import '../Models/character.dart';
//utilities
import '../Utilities/themes.dart';
//widgets
import '../Widgets/show_dialog.dart';

class SearchCharacterDialog {
  static Future<List<Character>> showSearchDialog(
      BuildContext context,
      String searchString,
      List<Character> fetchedCharacters,
      List<Character> displayCharacters) async {
    TextEditingController searchController = TextEditingController();
    List<Character> toDisplay = [];

    Widget searchDialog = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoTextField(
          controller: searchController,
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              searchString = value.toLowerCase();
            } else {
              searchString = "";
            }

            toDisplay = FilterDisplayCharacters.showSearchCharacters(
                searchString.toLowerCase(), fetchedCharacters);

            Navigator.of(context).pop();
          },
        ),
        CupertinoButton(
          child: Text(
            "Cancel",
            style: TextStyle(
              color: Themes.themeColor1,
            ),
          ),
          onPressed: () {
            toDisplay = displayCharacters;
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    await ShowDialog.viewDialog(context, searchDialog);
    return toDisplay;
  }
}

class FilterDisplayCharacters {
  static List<Character> showSearchCharacters(
      String searchString, List<Character> fetched) {
    List<Character> characters = [];
    if (searchString == "") {
      characters = fetched;
    } else {
      for (var character in fetched) {
        if (character.name.toLowerCase().contains(searchString)) {
          characters.add(character);
        } else if (character.description != null) {
          character.description!.toLowerCase().contains(searchString)
              ? characters.add(character)
              : null;
        } else {
          null;
        }
      }
    }

    return characters;
  }
}
