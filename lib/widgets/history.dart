import "package:flutter/material.dart";
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/theme/font.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Transfer",
                      style: statusTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "10/30/40 | 30:40:89",
                      style: dateTextStyle,
                    ),
                  ],
                )
              ],
            ),
            const Text(
              "+ Rp. 20.000.000",
              style: cashinTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
