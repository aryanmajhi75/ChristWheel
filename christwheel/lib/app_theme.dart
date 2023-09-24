import 'package:flutter/material.dart';

const Color primaryL = Color(0xffffffff);
const Color secondaryL = Color(0xff0466C9);
const Color accentGray = Color(0xff757F8C);
const Color accentBlack = Color(0xff3B414B);
const Color success = Color(0xff4BD37B);
const double defPadding = 20;

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryL,
        elevation: 0,
        actionsIconTheme: IconThemeData(
          color: secondaryL,
        ),
        iconTheme: IconThemeData(
          color: secondaryL,
        ),
      ),
      scaffoldBackgroundColor: primaryL,
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: accentBlack,
          decoration: TextDecoration.none,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        headlineMedium: TextStyle(
          color: accentBlack,
          decoration: TextDecoration.none,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        bodyMedium: TextStyle(
          color: accentBlack,
          decoration: TextDecoration.none,
          fontSize: 16,
          overflow: TextOverflow.ellipsis,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: secondaryL,
        selectedItemColor: primaryL,
        elevation: 5,
        selectedIconTheme: IconThemeData(
          size: 32,
        ),
        unselectedIconTheme: IconThemeData(
          size: 32,
        ),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          visualDensity: VisualDensity.comfortable,
          backgroundColor: MaterialStatePropertyAll(secondaryL),
          iconColor: MaterialStatePropertyAll(primaryL),
          elevation: MaterialStatePropertyAll(0),
          iconSize: MaterialStatePropertyAll(30),
          // overlayColor: MaterialStatePropertyAll(spotifyGreen),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
