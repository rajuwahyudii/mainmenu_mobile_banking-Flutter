import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/theme/font.dart';

class InformationBalanceWidget extends StatefulWidget {
  //parameters
  int balance;
  double width;
  int id = 1;
  InformationBalanceWidget({
    //required parameters
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
    //format currency indonesia
    final formatCurrency = NumberFormat.currency(
      name: "Rp. ",
      decimalDigits: 0,
    );

    //body of information balance
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
            width: widget.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //nominal balance
                    Text(
                      widget.id == 1
                          ? "Rp.   - "
                          : formatCurrency.format(widget.balance),
                      style: balanceTextStyle,
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    //eye icon
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

                //text available
                const Text(
                  "Available Balance",
                  style: availablebalanceTextStyle,
                )
              ],
            ),
          ),

          //account icon
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
