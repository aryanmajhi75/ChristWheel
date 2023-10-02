import 'package:christwheel/app_theme.dart';
import 'package:christwheel/components/add_vehicle.dart';
import 'package:flutter/material.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  final bool _isParked = false;

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
                "My Profile",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              Card(
                // color: secondaryL,

                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(defPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        backgroundColor: accentGray,
                        radius: 50,
                        backgroundImage: AssetImage(
                          "images/profile.jpg",
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Aryan Majhi",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          Text(
                            "2347107",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            "Student",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            "Parked In",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: deviceHeight * 0.65,
                        width: deviceWidth,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                  color: secondaryL,
                                  width: 1,
                                ),
                              ),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(defPadding),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                            "Vehicle Registration Number :"),
                                        SizedBox(
                                          height: deviceHeight * 0.01,
                                        ),
                                        Text(
                                          "KA-12L-1234",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium,
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
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
