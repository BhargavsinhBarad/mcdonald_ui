import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdonald_ui/Moduls/Screens/welcome_screens.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () {
        Get.to(welcome());
      },
    );
    return Scaffold(
      body: Center(
          child: Container(
        height: 60,
        width: 60,
        child: Image.asset("lib/Assets/Image/otherimage/logo.png"),
      )),
    );
  }
}
