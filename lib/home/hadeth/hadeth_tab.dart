import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/home/hadeth/ItemHadethName.dart';

import '../../AppColors.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    loadHadethFile();
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/hadeth_logo.png')),
        const Divider(
          color: AppColors.primaryLightColor,
          thickness: 3,
        ),
        Text(
          'الأحاديث',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Divider(
          color: AppColors.primaryLightColor,
          thickness: 3,
        ),
        Expanded(
          flex: 2,
          child: ahadethList.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryLightColor,
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: AppColors.primaryLightColor,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemHadethName(
                      hadeth: ahadethList[index],
                    );
                  },
                  itemCount: ahadethList.length,
                ),
        )
      ],
    );
  }

  Future<void> loadHadethFile() async {
    String hadethContent =
        await rootBundle.loadString('assets/files/hadeth/ahadeth.txt');
    List<String> hadethList = hadethContent.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLines = hadethList[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(content: hadethLines, title: title);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

///data class represent el hadeth
class Hadeth {
  String title;

  List<String> content;

  Hadeth({required this.content, required this.title});
}
