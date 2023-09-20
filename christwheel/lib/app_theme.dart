import 'package:flutter/material.dart';

const Color primaryL = Color(0xffffffff);
const Color secondaryL = Color(0xff0466C9);
const Color accentGray = Color(0xff757F8C);
const Color accentBlack = Color(0xff3B414B);
const Color success = Color(0xff4BD37B);

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
        displayMedium: TextStyle(
          color: accentBlack,
          decoration: TextDecoration.none,
          fontSize: 14,
          overflow: TextOverflow.ellipsis,
          // fontFamily: 'Quicksand',
          // fontWeight: FontWeight.w600,
        ),
        displayLarge: TextStyle(
          color: accentBlack,
          decoration: TextDecoration.none,
          fontSize: 18,
          overflow: TextOverflow.ellipsis,
          // fontFamily: 'Quicksand',
          // fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: accentBlack,
          decoration: TextDecoration.none,
          fontSize: 20,
          overflow: TextOverflow.ellipsis,
          // fontFamily: 'Quicksand',
          // fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primaryL,
        selectedItemColor: secondaryL,
        unselectedItemColor: accentGray,
        elevation: 0,
        selectedIconTheme: IconThemeData(
          size: 32,
        ),
        unselectedIconTheme: IconThemeData(
          size: 30,
        ),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          visualDensity: VisualDensity.comfortable,
          backgroundColor: MaterialStatePropertyAll(primaryL),
          iconColor: MaterialStatePropertyAll(secondaryL),
          elevation: MaterialStatePropertyAll(0),
          iconSize: MaterialStatePropertyAll(30),
          // overlayColor: MaterialStatePropertyAll(spotifyGreen),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
