import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widget/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body:ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_1.png")
                  )
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle1,),
                  Gap(AppLayout.getHeight(2)),
                  Text("New-York", style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  ),),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(3),horizontal: AppLayout.getWidth(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                            color: Color(0xFF526799),
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15,),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text("Premium status",style: TextStyle(
                          color: Color(0xFF526799), fontWeight: FontWeight.w600
                        ),),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  ),

                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("u are tapped");
                    },
                    child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300)),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getHeight(8)),
          Stack(
           children: [
             Container(
               height: AppLayout.getHeight(90),
               width: double.maxFinite,
               decoration: BoxDecoration(
                 color: Styles.primaryColor,
                 borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
               ),
             ),
             Positioned(
               top: -40,
                 right: -45,
                 child: Container(
               padding: EdgeInsets.all(AppLayout.getHeight(30)),
               decoration: BoxDecoration(
                 color: Colors.transparent,
                   shape: BoxShape.circle,
                   border: Border.all(width: 18, color: Color(0xFF264CD2))
               ),
             )),
             Container(
               padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(25),vertical: AppLayout.getHeight(20)),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   CircleAvatar(
                     child: Icon(FluentSystemIcons.ic_fluent_lightbulb_circle_filled, color: Styles.primaryColor,size: 27,),
                     maxRadius: 25,
                     backgroundColor: Colors.white,
                   ),
                   Gap(AppLayout.getHeight(12)),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("You\'v got new award",style: Styles.headLineStyle1.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                       Text("You have 95 flight in a year",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9), fontSize: 16),)
                     ],
                   )
                 ],
               ),
             )
           ],
          ),
          Gap(AppLayout.getHeight(20)),
          Text("Accumulated miles", style: Styles.headLineStyle2,),

          Container(
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text("135487",style: TextStyle(
                  fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600
                ),),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text("20-June-2023", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstString: "2304", secondString: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstString: "Airline CO", secondString: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstString: "24", secondString: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstString: "McDonal's", secondString: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstString: "52340", secondString: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstString: "Exuma", secondString: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("How to get home miles", style: Styles.headLineStyle3.copyWith(color: Color(0xFF526799)),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}