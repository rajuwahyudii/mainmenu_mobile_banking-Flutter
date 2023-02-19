import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/widgets/history.dart';

class ListHistory extends StatelessWidget {
  double width;
  double height;
  ListHistory({
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 100),
      decoration: const BoxDecoration(
        color: greyBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(31),
          topRight: Radius.circular(31),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          History(),
          History(),
        ],
      ),
    );
  }
}
