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
                "History",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              SizedBox(
                height: deviceHeight * 0.65,
                width: deviceWidth * 0.8,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: const EdgeInsets.all(defPadding / 2),
                      subtitle: const Text("Status In"),
                      leading: const Text("08:45 am"),
                      trailing: const Icon(
                        Icons.verified_rounded,
                        color: success,
                      ),
                      title: Text("Parking Area : $index"),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
