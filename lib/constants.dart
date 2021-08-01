import 'package:flutter/material.dart';

/// theme color purple
Color kThemePurple = const Color(0xffB82CCB);

/// theme color blue
Color kThemeBlue = const Color(0xff015FFB);
Color kThemeDarkBlue = const Color(0xff1D1851);
Color kThemeDark = const Color(0xff04051D);
Color kThemeBlueGrey = const Color(0xff98ACCB);
Color kThemePurpleBlue = const Color(0xff7C3DFC);

LinearGradient kGradientPrimary = LinearGradient(colors: <Color>[
  kThemePurple,
  Colors.transparent,
  kThemeBlue,
], begin: Alignment.topLeft);

LinearGradient kGradientBtn = LinearGradient(
  colors: <Color>[kThemePurpleBlue, kThemeBlue],
);

LinearGradient kGradientBG = LinearGradient(colors: <Color>[
  kThemeDarkBlue.withOpacity(0.5),
  kThemeDark.withOpacity(0.5),
  kThemeBlueGrey.withOpacity(0.5),
  Colors.white70
]);

LinearGradient kGradientWhite = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: <Color>[
    const Color(0xFFffffff).withOpacity(0.1),
    const Color(0xFFFFFFFF).withOpacity(0.05),
  ],
  stops: const <double>[
    0.1,
    1,
  ],
);
