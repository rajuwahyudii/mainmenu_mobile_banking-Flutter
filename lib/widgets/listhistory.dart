import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/theme/color.dart';
import 'package:mobile_banking_menu/widgets/history.dart';

class ListHistory extends StatelessWidget {
  double size;
  ListHistory({
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 100),
      decoration: BoxDecoration(
        color: greyBackgroundColor,
        borderRadius: BorderRadius.circular(
          31,
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
