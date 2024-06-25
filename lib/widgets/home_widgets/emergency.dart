import 'package:flutter/material.dart';
import 'package:women_safety_app/widgets/emergencies/AmbulanceEmergency.dart';
import 'package:women_safety_app/widgets/emergencies/ArmyEmergency.dart';
import 'package:women_safety_app/widgets/emergencies/FirebrigadeEmergency.dart';
import 'package:women_safety_app/widgets/emergencies/policeemErgency.dart';




class Emergency extends StatelessWidget {
  const Emergency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceEmergency(),
          AmbulanceEmergency(),
          FirebrigadeEmergency(),
          ArmyEmergency(),
        ],
      ),
    );
  }
}