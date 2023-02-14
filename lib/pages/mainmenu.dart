// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.lens_rounded,
          color: Colors.lightGreen,
          size: 25,
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
      body: SafeArea(
        child: Text("A"),
      ),
    );
  }
}
