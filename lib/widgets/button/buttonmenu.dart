import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/theme/font.dart';

class ButtonMenuWidget extends StatelessWidget {
  const ButtonMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: greyBackgroundColor,
            ),
            child: const Icon(
              Icons.abc,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            "Transfer",
            style: textButtonTextStyle,
          )
        ],
      ),
    );
  }
}
