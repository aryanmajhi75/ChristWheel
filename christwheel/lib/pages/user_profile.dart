import 'package:christwheel/app_theme.dart';
import 'package:flutter/material.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  bool _isParked = true;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/Topbarbg-preview.png",
          height: 50,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "User Profile",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(defPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: accentGray,
                        maxRadius: 40,
                        minRadius: 40,
                        child: Image.asset(
                          "images/profile.jpg",
                          // height: 90,
                          isAntiAlias: true,
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Aryan Majhi"),
                          Text("2347107"),
                          Text("Central Campus"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              Text(
                "Vehicle Details",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(defPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Vehicle Registration Number"),
                          SizedBox(
                            height: deviceHeight * 0.01,
                          ),
                          Text(
                            "KA-12L-1234",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          SizedBox(
                            height: deviceHeight * 0.01,
                          ),
                          const Text("Two Wheeler"),
                        ],
                      ),
                      Icon(
                        _isParked
                            ? Icons.no_crash_rounded
                            : Icons.car_crash_rounded,
                        color: _isParked ? success : accentGray,
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
