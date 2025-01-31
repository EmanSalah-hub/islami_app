import 'package:flutter/material.dart';
import 'package:islamic_app/home/quran/SuraDetailsScreen.dart';

class ItemSuraName extends StatelessWidget {
  String name;

  int index;

  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(suraName: name, index: index));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.bodySmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
