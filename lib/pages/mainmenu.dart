// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/widgets/button/buttonmenu.dart';
import 'package:mobile_banking_menu/widgets/information_balance.dart';
import 'package:mobile_banking_menu/widgets/listhistory.dart';
import 'package:mobile_banking_menu/widgets/listmenubutton.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //make size with media query
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InformationBalanceWidget(width: size.width),
                  Image.asset(
                    "assets/images/card.png",
                    width: size.width * 0.8,
                  ),
                  const ListMenuButtonWidget(),
                  ListHistoryWidget(
                    width: size.width,
                    height: size.height * 0.5,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
