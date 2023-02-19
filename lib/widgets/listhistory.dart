// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/theme/font.dart';
import 'package:mobile_banking_menu/widgets/history.dart';

class ListHistoryWidget extends StatelessWidget {
  double width;
  double height;
  ListHistoryWidget({
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 30),
            child: Text(
              "Recent Transactions",
              style: recentTransactionTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              "Today",
              style: dateTransactionTextStyle,
            ),
          ),
          HistoryWidget(),
          HistoryWidget(),
          HistoryWidget(),
          HistoryWidget(),
        ],
      ),
    );
  }
}
