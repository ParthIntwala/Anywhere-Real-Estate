import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//apiresponse
import '../APIOperation/fetch_data.dart';
//utilities
import '../Utilities/android_app.dart';
import '../Utilities/ios_app.dart';
//models
import '../Models/character.dart';
//widgets
import '../Widgets/phone_item_detail.dart';

class ListScreen extends StatefulWidget {
  static const String listScreenRoute = "/listScreen";
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late Future _future;
  late bool _isAndroid;
  bool _isInit = true;
  List<Character> fetchedCharacters = [];
  List<Character> displayCharacters = [];

  @override
  void initState() {
    _isAndroid = Platform.isAndroid;
    _future = Provider.of<FetchData>(context, listen: false).fetchCharacters(
        _isAndroid ? AndriodApp.searchString : IOSApp.searchString);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        brightness: Brightness.dark,
        middle: Text(
          _isAndroid
              ? AndriodApp.navigationBarTitle
              : IOSApp.navigationBarTitle,
        ),
      ),
      child: SafeArea(
        maintainBottomViewPadding: true,
        minimum: const EdgeInsets.all(10),
        child: FutureBuilder(
          future: _future,
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            } else {
              if (_isInit) {
                fetchedCharacters =
                    Provider.of<FetchData>(context, listen: false).characters;
                displayCharacters = fetchedCharacters;
                _isInit = false;
              }
              return displayCharacters.isNotEmpty
                  ? ListView(
                      children: displayCharacters
                          .map((character) => PhoneItemDetail(
                              key: ValueKey(character.name),
                              character: character))
                          .toList())
                  : const Center(
                      child: Text(
                        "No item matching the search query",
                        style: TextStyle(fontSize: 20),
                      ),
                    );
            }
          },
        ),
      ),
    );
  }
}
