import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int session;
  const AppLayoutBuilderWidget({Key? key, required this.isColor, required this.session}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder:
          (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / session).floor(),
                  (index) => SizedBox(
                width: 5,
                height: 1,
                child: DecoratedBox(
                  decoration:
                  BoxDecoration(color:isColor==null? Colors.white:Colors.grey.shade200),
                ),
              )),
        );
      },
    );
  }
}
