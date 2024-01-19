import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdonald_ui/Moduls/Screens/introscreen.dart';

class loadingscreen extends StatelessWidget {
  const loadingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () {
        Get.to(() => intro_page());
      },
    );
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
              height: 170,
              width: 170,
              child: Image.network(
                "https://cdni.iconscout.com/illustration/premium/thumb/burger-meal-with-fries-and-cold-drink-4119392-3425153.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            width: 150,
            child: Image.network(
              "https://www.preventmiscarriage.com/images/progress-bar.gif",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
