import 'package:flutter/material.dart';

class ItemHadethDetials extends StatelessWidget {
  String content;

  ItemHadethDetials({
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
