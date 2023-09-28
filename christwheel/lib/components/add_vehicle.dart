import 'package:christwheel/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Addvehicle extends StatefulWidget {
  const Addvehicle({super.key});

  @override
  State<Addvehicle> createState() => _AddvehicleState();
}

class _AddvehicleState extends State<Addvehicle> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        ElevatedButton(
          child: const Text("submit"),
          onPressed: () {},
        ),
      ],
      scrollable: true,
      title: const Text("Add Vehicle"),
      content: Padding(
        padding: const EdgeInsets.all(defPadding),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Vehicle Reg Number",
                  icon: Icon(MdiIcons.car),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Type of Vehicle",
                  icon: Icon(Icons.email),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
