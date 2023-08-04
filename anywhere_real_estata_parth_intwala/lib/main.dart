import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//screens
import './Screens/home.dart';
import './Screens/list.dart';
//apis
import './APIOperation/fetch_data.dart';
//utilities
import './Utilities/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => FetchData(),
        ),
      ],
      child: CupertinoApp(
        title: 'Flutter Demo',
        home: const HomeScreen(),
        routes: {
          HomeScreen.homeScreenRoute: (ctx) => const HomeScreen(),
          ListScreen.listScreenRoute: (ctx) => const ListScreen(),
        },
        theme: CupertinoThemeData(
          barBackgroundColor: Themes.themeColor1,
          textTheme: const CupertinoTextThemeData(
            navTitleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            primaryColor: Colors.white,
          ),
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
