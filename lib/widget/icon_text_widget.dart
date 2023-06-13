import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(5))
      ),
      child: Row(
        children: [
          Icon(Icons.flight_takeoff_rounded, color: Color(0xFFBFC2DF),),
          Gap(AppLayout.getWidth(7)),
          Text("Departure", style: Styles.textStyle,)
        ],
      ),
    );
  }
}

