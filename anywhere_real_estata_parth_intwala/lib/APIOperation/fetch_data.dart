import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

//models
import '../Models/character.dart';

class FetchData with ChangeNotifier {
  List<Character> _characters = [];

  List<Character> get characters {
    return _characters;
  }

  Future<void> fetchCharacters(String characterURL) async {
    List<Character> fetchedCharacters = [];

    try {
      var response = await http
          .get(Uri.parse(
              "http://api.duckduckgo.com/?q=$characterURL&format=json"))
          .timeout(
              const Duration(
                seconds: 30,
              ), onTimeout: () {
        throw TimeoutException("Request Timed Out");
      }).onError((error, stackTrace) => throw Exception(error));

      var responseBody = jsonDecode(response.body);

      for (var singleCharacter in responseBody["RelatedTopics"]) {
        List<String> detail = singleCharacter["Text"].split(" - ");
        Character character = Character(
          name: detail[0],
          description: detail[1],
          url: singleCharacter["Icon"]["URL"],
        );
        fetchedCharacters.add(character);
      }

      _characters = fetchedCharacters;
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }
}
