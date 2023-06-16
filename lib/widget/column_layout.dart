import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstString;
  final String secondString;
  final CrossAxisAlignment alignment;
  const AppColumnLayout({Key? key, required this.firstString, required this.secondString, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstString,style: Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(5)),
        Text(secondString,style: Styles.headLineStyle4,),
      ],
    );
  }
}
