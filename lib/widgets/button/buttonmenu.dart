import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/theme/font.dart';

class ButtonMenuWidget extends StatelessWidget {
  String image;
  String status;
  ButtonMenuWidget({
    required this.image,
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //action button
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 10,
        ),
        child: Column(
          children: [
            Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: greyBackgroundColor,
                ),
                //icon button
                child: Image.asset(
                  "assets/images/icons/$image",
                  scale: 3,
                )),
            const SizedBox(
              height: 6,
            ),

            //text for button
            Text(
              status,
              style: textButtonTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
