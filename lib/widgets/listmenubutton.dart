import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/widgets/button/buttonmenu.dart';

class ListMenuButtonWidget extends StatelessWidget {
  const ListMenuButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //add button menu in here
            ButtonMenuWidget(
              status: "Transfer",
              image: "transaction.png",
            ),
            ButtonMenuWidget(
              status: "E-Wallet",
              image: "wallet.png",
            ),
            ButtonMenuWidget(
              status: "Payment",
              image: "cart.png",
            ),
            ButtonMenuWidget(
              status: "Saving",
              image: "saving.png",
            ),
            ButtonMenuWidget(
              status: "Others",
              image: "menu.png",
            ),
          ],
        ),
      ),
    );
  }
}
