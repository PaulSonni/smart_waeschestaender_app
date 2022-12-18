import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xFFE20074);
const secondaryColor = Color(0xFFA60BE3);

final ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: primaryColor,
  ),
  scaffoldBackgroundColor: Colors.white,
);

final ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: primaryColor,
  ),
  scaffoldBackgroundColor: Colors.grey[850],
);
