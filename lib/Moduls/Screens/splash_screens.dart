import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdonald_ui/Moduls/Screens/welcome_screens.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () {
        Get.to(() => const welcome());
      },
    );
    return Scaffold(
      body: Center(
          child: SizedBox(
        height: 60,
        width: 60,
        child: Image.asset("lib/Assets/Image/otherimage/logo.png"),
      )),
    );
  }
}
