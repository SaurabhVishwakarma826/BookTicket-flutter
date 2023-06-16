import 'dart:html';

import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widget/layout_builder.dart';
import 'package:booktickets/widget/ticket_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic>ticket;
  final bool? isColor;
  const TicketView({Key? key,required this.ticket, required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // showing the blue part of ticket card
            Container(
              decoration: BoxDecoration(
                  color: isColor==null? Color(0xFF526799): Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      TicketContainer(isColor:true),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: AppLayoutBuilderWidget(session: 6,isColor: null,),
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(Icons.local_airport_rounded,
                                      color:isColor==null? Colors.white: Color(0xFF8ACCf7)))),
                        ],
                      )),
                      TicketContainer(isColor:true),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        ticket['to']['code'],
                        style:isColor==null?
                            Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                      )
                    ],
                  ),
                  Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor==null? Styles.headLineStyle3
                              .copyWith(color: Colors.white):Styles.headLineStyle3,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style:isColor==null?
                            Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style:isColor==null? Styles.headLineStyle3
                              .copyWith(color: Colors.white):Styles.headLineStyle3,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // Showing the Orange part of thicket card
            Container(
              color:isColor==null? Styles.orangeColo: Colors.white,
              child: Row(
                children: [
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor==null? Colors.grey.shade200:Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppLayout.getWidth(10)),
                              bottomRight: Radius.circular(AppLayout.getWidth(10)))),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding:  EdgeInsets.all(AppLayout.getHeight(12)),
                    child: AppLayoutBuilderWidget(session: 15, isColor: null,),
                  )),
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor==null?Colors.grey.shade200: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getHeight(10)),
                              bottomLeft: Radius.circular(AppLayout.getHeight(10)))),
                    ),
                  ),

                ],
              ),
            ),
            Container(
             decoration: BoxDecoration(
               color:isColor==null? Styles.orangeColo:Colors.white,
               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(isColor==null?21:0)), bottomRight: Radius.circular(AppLayout.getHeight(isColor==null?21:0)))
             ),
              padding: EdgeInsets.only(left: AppLayout.getHeight(16), top: AppLayout.getWidth(10), right: AppLayout.getWidth(16), bottom: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'], style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          Text("Date", style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'], style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          Text("Departure time", style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          Text("Number", style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
