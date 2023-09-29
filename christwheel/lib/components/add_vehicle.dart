import 'package:christwheel/app_theme.dart';
import 'package:flutter/material.dart';

class Addvehicle extends StatefulWidget {
  const Addvehicle({super.key});

  @override
  State<Addvehicle> createState() => _AddvehicleState();
}

class _AddvehicleState extends State<Addvehicle> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: defElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      actions: [
        Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            style: ButtonStyle(
              fixedSize: const MaterialStatePropertyAll(
                Size(130, 50),
              ),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            child: const Text("Submit"),
            onPressed: () {},
          ),
        ),
      ],
      scrollable: true,
      actionsPadding: const EdgeInsets.only(bottom: 20),
      title: Text(
        "Add Vehicle",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      content: Padding(
        padding: const EdgeInsets.all(defPadding),
        child: Form(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Vehicle Reg Number",
                    icon: Icon(Icons.directions_car_rounded),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Type of Vehicle",
                    icon: Icon(
                      Icons.category_rounded,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
