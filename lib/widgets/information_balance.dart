import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/theme/font.dart';

class InformationBalanceWidget extends StatelessWidget {
  double width;
  InformationBalanceWidget({
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(
        top: 50,
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Rp. 4.000.000",
                      style: balanceTextStyle,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye,
                        size: 20,
                        color: lightTextColor,
                      ),
                    )
                  ],
                ),
                const Text(
                  "Available Balance",
                  style: availablebalanceTextStyle,
                )
              ],
            ),
          ),
          const Icon(
            Icons.account_circle_outlined,
            color: lightTextColor,
            size: 40,
          )
        ],
      ),
    );
  }
}
