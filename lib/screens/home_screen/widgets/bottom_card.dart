import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

/// The card with lowest z-index in the weather card stack
class BottomCard extends StatelessWidget {
  const BottomCard({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
