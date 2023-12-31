import 'package:christwheel/app_theme.dart';
import 'package:flutter/material.dart';

class Userhistory extends StatefulWidget {
  const Userhistory({super.key});

  @override
  State<Userhistory> createState() => _UserhistoryState();
}

class _UserhistoryState extends State<Userhistory> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    // final deviceWidth = MediaQuery.of(context).size.width;
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
                "My History",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: defElevation,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: secondaryL,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: defPadding,
                            bottom: defPadding,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // const Text("Status In"),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.arrow_downward_rounded,
                                    color: success,
                                  ),
                                  Text("08:45 am"),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.arrow_upward_rounded,
                                    color: error,
                                  ),
                                  Text("12:50 pm"),
                                ],
                              ),
                              Text("Parking Area : $index"),
                              if (index != 0)
                                const Icon(
                                  Icons.verified_rounded,
                                  color: accentGray,
                                )
                              else
                                const Icon(
                                  Icons.verified_rounded,
                                  color: success,
                                ),
                            ],
                          ),
                        ),
                      );
                    },
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
