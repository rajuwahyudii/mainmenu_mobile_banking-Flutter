// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mobile_banking_menu/widgets/history.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //make size with media query
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.lens_rounded,
          color: Colors.lightGreen,
          size: 21,
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: const [History()],
        ),
      ),
      bottomNavigationBar: Container(
        width: 10,
        height: 80,
        color: Colors.grey[300],
      ),
    );
  }
}
