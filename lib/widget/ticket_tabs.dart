import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketTab extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TicketTab({Key? key, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: Color(0xFFF4F6FD)),
        child: Row(
          children: [
            // Airlines tickets
            Container(
              width: size.width * .44,
              padding:
              EdgeInsets.symmetric(horizontal: AppLayout.getWidth(7), vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child: Center(
                child: Text(firstText),
              ),
            ),
            // Hotels tickets
            Container(
              width: size.width * .44,
              padding:
              EdgeInsets.symmetric(horizontal: AppLayout.getWidth(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child: Center(
                child: Text(secondText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
