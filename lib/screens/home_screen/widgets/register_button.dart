import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

/// Register button
class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
    );
  }
}
