import 'package:christwheel/app_theme.dart';
import 'package:flutter/material.dart';

class Usernotification extends StatefulWidget {
  const Usernotification({super.key});

  @override
  State<Usernotification> createState() => _UsernotificationState();
}

class _UsernotificationState extends State<Usernotification> {
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
                "My Notifications",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              Expanded(
                child: SizedBox(
                  // height: deviceHeight * 0.65,
                  // width: deviceWidth,
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
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Some Notification",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                  SizedBox(
                                    height: deviceHeight * 0.01,
                                  ),
                                  const Text(
                                    "By: Guard ",
                                  ),
                                  SizedBox(
                                    height: deviceHeight * 0.01,
                                  ),
                                  const Text(
                                    "10:03 am",
                                  ),
                                ],
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
