import 'package:flutter/material.dart';

import 'containers/body_container.dart';

/// Home screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/primary-bg@3x.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            scale: 1,
          ),
          BodyContainer(screenHeight: screenHeight, screenWidth: screenWidth),
        ],
      ),
    );
  }
}
