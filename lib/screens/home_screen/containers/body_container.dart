import 'package:flutter/material.dart';
import 'package:glassmorphism_concept_app/screens/home_screen/widgets/register_button.dart';
import 'package:glassmorphism_concept_app/screens/home_screen/widgets/tagline_text.dart';
import 'package:google_fonts/google_fonts.dart';

import 'weather_top_card.dart';

/// The content of homepage
class BodyContainer extends StatelessWidget {
  const BodyContainer({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.85,
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          WeatherTopCard(screenHeight: screenHeight, screenWidth: screenWidth),
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
          TaglineText(screenWidth: screenWidth),
          RegisterButton(screenWidth: screenWidth, screenHeight: screenHeight),
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
    );
  }
}
