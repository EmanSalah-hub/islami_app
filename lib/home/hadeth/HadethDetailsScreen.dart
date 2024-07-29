import 'package:flutter/material.dart';
import 'package:islamic_app/AppColors.dart';
import 'package:islamic_app/home/hadeth/hadeth_tab.dart';
import 'package:islamic_app/home/hadeth/itemHadethDetails.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details_screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Stack(children: [
      Image.asset(
        'assets/images/default_bg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.04,
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetials(
                content: args.content[index],
              );
            },
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}
