import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(17)),
      margin:  EdgeInsets.only(top: AppLayout.getHeight(5), right: AppLayout.getWidth(17)),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}")
              )
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Text("${hotel['place']}",style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
          Gap(AppLayout.getHeight(5)),
          Text("${hotel['destination']}",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          Gap(AppLayout.getHeight(5)),
          Text("\$${hotel['price']}/night",style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),)
        ],
      ),
    );
  }
}
