import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/theme/font.dart';

class InformationBalanceWidget extends StatefulWidget {
  int balance;
  double width;
  int id = 1;
  InformationBalanceWidget({
    required this.balance,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  State<InformationBalanceWidget> createState() =>
      _InformationBalanceWidgetState();
}

class _InformationBalanceWidgetState extends State<InformationBalanceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      padding: const EdgeInsets.only(
        top: 50,
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: widget.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.id == 1 ? "Rp.   - " : "Rp. ${widget.balance}",
                      style: balanceTextStyle,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.id == 1 ? widget.id = 2 : widget.id = 1;
                        });
                      },
                      icon: Icon(
                        widget.id == 1
                            ? Icons.visibility
                            : Icons.visibility_off,
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
