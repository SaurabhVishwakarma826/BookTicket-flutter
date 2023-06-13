import 'dart:html';

import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widget/ticket_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic>ticket;
  const TicketView({Key? key,required this.ticket}) : super(key: key);

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
                  color: Color(0xFF526799),
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
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      TicketContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white),
                                              ),
                                            )));
                              },
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(Icons.local_airport_rounded,
                                      color: Colors.white))),
                        ],
                      )),
                      TicketContainer(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        ticket['to']['code'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
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
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // Showing the Orange part of thicket card
            Container(
              color: Styles.orangeColo,
              child: Row(
                children: [
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppLayout.getWidth(10)),
                              bottomRight: Radius.circular(AppLayout.getWidth(10)))),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding:  EdgeInsets.all(AppLayout.getHeight(12)),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
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
               color: Styles.orangeColo,
               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(21)), bottomRight: Radius.circular(AppLayout.getHeight(21)))
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
                          Text(ticket['date'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text("Date", style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text("Departure time", style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text("Number", style: Styles.headLineStyle3.copyWith(color: Colors.white))
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
