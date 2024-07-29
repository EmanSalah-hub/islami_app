import 'package:flutter/material.dart';
import 'package:islamic_app/AppColors.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tasbeeh = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر'
  ];
  int tasbeehIndex = 0;
  int rotationAngle = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/sebha.png'),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.counterButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8)),
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: incrementCounter,
            child: Text(
              tasbeeh[tasbeehIndex],
              style: Theme.of(context).textTheme.titleSmall,
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryLightColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8)),
          ),
        ],
      ),
    );
  }

  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
      if (counter > 33) {
        counter = 0;
        rotationAngle += 45;
        tasbeehIndex = (tasbeehIndex + 1) % (tasbeeh.length);
      }
    });
  }
}