import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widget/column_layout.dart';
import 'package:booktickets/widget/layout_builder.dart';
import 'package:booktickets/widget/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle1,),
              Gap(AppLayout.getHeight(20)),
              TicketTab(firstText: "Airline tickets", secondText: "Hotels"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(20)),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstString:"Flutter DB",secondString: "Passengers",alignment: CrossAxisAlignment.start,),
                        AppColumnLayout(firstString:"5221 364869",secondString: "Passport",alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    AppLayoutBuilderWidget(session: 15, isColor: false,),
                    Gap(AppLayout.getHeight(20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstString: "234232 45678954", secondString: "Number of e-ticket", alignment: CrossAxisAlignment.start),
                        AppColumnLayout(firstString: "B342S3", secondString: "Booking code", alignment: CrossAxisAlignment.end)
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    AppLayoutBuilderWidget(session: 15, isColor: false,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png", scale: 11,),
                                Text(" *** 7558", style: Styles.headLineStyle3,)
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text("Payment method",style: Styles.headLineStyle4,),
                          ],
                        ),
                        Gap(AppLayout.getHeight(20)),
                        AppColumnLayout(firstString:"\$249.99",secondString: "Price",alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    const SizedBox(height: 1,),
                    Gap(AppLayout.getHeight(20)),
                  ],
                ),
                ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(21))
                  )
                ),
                margin: EdgeInsets.only(left: AppLayout.getWidth(15), right: AppLayout.getWidth(15)),
                padding: EdgeInsets.only(top: AppLayout.getHeight(20), bottom: AppLayout.getHeight(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: "https://github.com/SaurabhVishwakarma826",
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                child: TicketView(ticket: ticketList[0], isColor: null,),
              )
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(19),
            top: AppLayout.getHeight(296),
            child:Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(19),
            top: AppLayout.getHeight(296),
            child:Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
