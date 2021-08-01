import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:glassmorphism_concept_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

/// Home screen
class HomeScreen extends StatelessWidget {
  /// Home screen constructor
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
          SizedBox(
            height: screenHeight * 0.85,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                WeatherTopCard(
                    screenHeight: screenHeight, screenWidth: screenWidth),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: screenWidth * 0.75,
                  child: Text(
                    'Know everything about the weather',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.75,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 18,
                        ),
                        children: <TextSpan>[
                          const TextSpan(
                            text: 'Start now and learn more about ',
                          ),
                          TextSpan(
                            text: 'local weather',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const TextSpan(
                            text: 'instantly',
                          ),
                        ]),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: screenWidth * 0.65,
                    height: screenHeight / 14,
                    decoration: BoxDecoration(
                      gradient: kGradientBtn,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Text(
                        'Get started',
                        style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Already have an account?',
                      style: GoogleFonts.montserrat(
                        color: Colors.white60,
                        fontSize: 17,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
          Positioned(
            right: 40,
            bottom: 20,
            child: Transform.rotate(
              angle: math.pi / 6,
              child: GlassmorphicContainer(
                width: screenWidth / 2.1,
                height: screenWidth / 1.9,
                borderRadius: 20,
                blur: 20,
                alignment: Alignment.bottomCenter,
                border: 1.5,
                linearGradient: kGradientWhite,
                borderGradient: kGradientPrimary,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/rainny-icon.svg',
                        height: 60,
                        color: Colors.white.withOpacity(0.7),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '18',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 60,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Cracow, Poland',
                        style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(0.4),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -40,
            left: 70,
            child: Image.asset(
              'assets/icons/donut-Purple-Glossy.png',
              width: 75,
            ),
          ),
          Positioned(
            top: 0,
            child: GlassmorphicContainer(
              width: screenWidth / 2.1,
              height: screenWidth / 1.9,
              borderRadius: 20,
              blur: 20,
              alignment: Alignment.bottomCenter,
              border: 1.5,
              linearGradient: kGradientWhite,
              borderGradient: kGradientPrimary,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/cloudy-icon.svg',
                      height: 60,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '30',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: 60,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Hanoi, Vietnam',
                      style: GoogleFonts.montserrat(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            bottom: 20,
            child: Transform.rotate(
              angle: -math.pi / 6,
              child: GlassmorphicContainer(
                width: screenWidth / 2.1,
                height: screenWidth / 1.9,
                borderRadius: 20,
                blur: 20,
                alignment: Alignment.bottomCenter,
                border: 1.5,
                linearGradient: kGradientWhite,
                borderGradient: kGradientPrimary,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/sunny-icon.svg',
                        height: 60,
                        color: Colors.white.withOpacity(0.7),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '18',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 60,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Deventer, Netherlands',
                        style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(0.4),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
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
