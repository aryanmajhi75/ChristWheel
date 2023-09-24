import 'package:flutter/material.dart';

class Userhistory extends StatefulWidget {
  const Userhistory({super.key});

  @override
  State<Userhistory> createState() => _UserhistoryState();
}

class _UserhistoryState extends State<Userhistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/Topbarbg-preview.png",
          height: 50,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
