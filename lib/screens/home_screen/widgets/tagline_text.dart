import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// The main tagline text
class TaglineText extends StatelessWidget {
  const TaglineText({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
