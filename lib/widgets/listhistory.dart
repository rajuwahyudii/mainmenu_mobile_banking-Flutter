// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/theme/font.dart';
import 'package:mobile_banking_menu/widgets/history.dart';

class ListHistoryWidget extends StatelessWidget {
  //parameters
  double width;
  double height;
  ListHistoryWidget({
    //required parameters
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //body of list history
    return Container(
      width: width,
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 50),
      decoration: const BoxDecoration(
        color: greyBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(31),
          topRight: Radius.circular(31),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //text recent transactions
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 30),
            child: Text(
              "Recent Transactions",
              style: recentTransactionTextStyle,
            ),
          ),

          //time of transaction overhere
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              "Today",
              style: dateTransactionTextStyle,
            ),
          ),

          //add new history in here
          HistoryWidget(
            date: "1/2/3",
            time: "05:05:05",
            status: "Salary",
            isCahsin: true,
            balance: 30000000,
          ),
          HistoryWidget(
            date: "1/2/3",
            time: "05:05:05",
            status: "Transfer",
            isCahsin: false,
            balance: 70000,
          ),
          HistoryWidget(
            date: "1/2/3",
            time: "05:05:05",
            status: "Salary",
            isCahsin: true,
            balance: 50000,
          ),
          HistoryWidget(
            date: "1/2/3",
            time: "05:05:05",
            status: "Payment",
            isCahsin: false,
            balance: 900000,
          ),
        ],
      ),
    );
  }
}
