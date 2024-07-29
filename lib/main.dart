import 'package:flutter/material.dart';
import 'package:islamic_app/home/hadeth/HadethDetailsScreen.dart';
import 'package:islamic_app/home/quran/SuraDetailsScreen.dart';
import 'package:islamic_app/my_theme_data.dart';

import 'home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyThemeData.lightMode,
    );
  }
}
