import 'package:booktickets/widget/double_text_widget.dart';
import 'package:booktickets/widget/icon_text_widget.dart';
import 'package:booktickets/widget/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What Are\n you looking for?", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          const TicketTab(firstText: "Airline Tickets", secondText: "Hotels"),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(5))),
            child: Center(
              child: Text("Find Tickets", style: Styles.textStyle.copyWith(color: Colors.white),),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          AppDoubleTextWidget(bigText: "Upcoming Flight", smallText:"View more"),
          Gap(AppLayout.getHeight(15)),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg")
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text("20% discount on early booking of this flight. Don't miss.",style: Styles.headLineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                 Stack(
                   children: [
                     Container(
                       width: size.width*0.44,
                       height: AppLayout.getHeight(200),
                       decoration: BoxDecoration(
                           color: Color(0xFF3AB8B8),
                           borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                       ),
                       padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(15)),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Discount\nfor survey",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                           Gap(AppLayout.getHeight(10)),
                           Text("Take the survey about our services and get discount",style: Styles.headLineStyle2.copyWith(color:Colors.white,fontWeight: FontWeight.w500, fontSize: 18),)
                         ],
                       ),
                     ),
                     Positioned(
                         right: -AppLayout.getHeight(45),
                         top: -AppLayout.getHeight(40),
                         child: Container(
                       padding: EdgeInsets.all(AppLayout.getHeight(30)),
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           border: Border.all(width: AppLayout.getWidth(18), color: Color(0xFF189999)),
                           color: Colors.transparent
                       ),
                     )
                     )
                   ],
                 ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text("Take love",style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(5)),
                        RichText(text: const TextSpan(
                          children:[
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 38)
                            ),
                            TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 50)
                            ),
                            TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 38)
                            ),
                          ]
                        ))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
