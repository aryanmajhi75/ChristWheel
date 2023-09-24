import 'package:christwheel/app_theme.dart';
import 'package:christwheel/pages/user_history.dart';
import 'package:christwheel/pages/user_profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  List<Widget> pages = [const Userprofile(), const Userhistory()];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: secondaryL,
        backgroundColor: primaryL,
        buttonBackgroundColor: primaryL,
        index: _selectedIndex,
        items: const [
          Icon(
            Icons.person_outline_rounded,
          ),
          Icon(
            Icons.history_rounded,
          ),
        ],
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: pages[_selectedIndex],
    );
  }
}
