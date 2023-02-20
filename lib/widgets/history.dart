import "package:flutter/material.dart";
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/theme/font.dart';

class HistoryWidget extends StatelessWidget {
  //parameters
  String date;
  String time;
  String status;
  bool isCahsin;
  int balance;
  HistoryWidget({
    //required parameters of history
    required this.time,
    required this.date,
    required this.status,
    required this.isCahsin,
    required this.balance,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //body of history widget
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        width: size.width * 0.90,
        height: 100,
        decoration: BoxDecoration(
          color: lightGreyBackgroundColor,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: greyButtonColor,
                    ),
                    child: Icon(
                      isCahsin ? Icons.arrow_upward : Icons.arrow_downward,
                      color: isCahsin ? cashInTextColor : cashOutTextColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      status,
                      style: statusTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$date | $time",
                      style: dateTextStyle,
                    ),
                  ],
                )
              ],
            ),
            Text(
              isCahsin == true ? "+ $balance" : "- $balance",
              style: isCahsin == true ? cashinTextStyle : cashoutTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
