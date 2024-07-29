import 'package:flutter/material.dart';

class ItemSuraDetials extends StatelessWidget {
  String content;

  int index;

  ItemSuraDetials({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content (${index + 1})',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
