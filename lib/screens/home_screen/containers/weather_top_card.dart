import 'package:flutter/material.dart';

import 'package:glassmorphism_concept_app/screens/home_screen/widgets/bottom_card.dart';
import 'package:glassmorphism_concept_app/screens/home_screen/widgets/center_card.dart';
import 'package:glassmorphism_concept_app/screens/home_screen/widgets/top_card.dart';

/// Contains the top part of the home page
class WeatherTopCard extends StatelessWidget {
  const WeatherTopCard({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      height: screenHeight / 3,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: -50,
            right: 60,
            child: Image.asset(
              'assets/icons/sphere-Blue-Glossy.png',
              width: 85,
            ),
          ),
          BottomCard(screenWidth: screenWidth),
          Positioned(
            bottom: -40,
            left: 70,
            child: Image.asset(
              'assets/icons/donut-Purple-Glossy.png',
              width: 75,
            ),
          ),
          CenterCard(screenWidth: screenWidth),
          TopCard(screenWidth: screenWidth),
          Positioned(
            top: -20,
            left: 70,
            child: Image.asset(
              'assets/icons/sphere-Blue-Glossy.png',
              width: 75,
            ),
          ),
          Positioned(
            right: -15,
            top: 90,
            child: Image.asset(
              'assets/icons/Purple-Glossy.png',
              width: 75,
            ),
          ),
        ],
      ),
    );
  }
}
