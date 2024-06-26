import 'package:flutter/material.dart';

Color primaryColor= Color(0xfffc3b99);


void goTo(BuildContext context, Widget nextScreen) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => nextScreen,
      ));
}