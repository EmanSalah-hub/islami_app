import 'package:flutter/material.dart';
import 'package:islamic_app/home/hadeth/hadeth_tab.dart';
import 'package:islamic_app/home/quran/QuranTab.dart';
import 'package:islamic_app/home/radio/RadioTab.dart';
import 'package:islamic_app/home/sebha/SebhaTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'إسلامي',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: 'Radio'),
            ],
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }
}
