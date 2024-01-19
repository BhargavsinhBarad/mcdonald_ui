import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdonald_ui/Moduls/Screens/flagScreen.dart';
import 'package:mcdonald_ui/Moduls/Screens/loadingscreen.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 250,
              width: 250,
              child: Image.asset("lib/Assets/Image/otherimage/earthj.png"),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Before we enter make sure you have selectedv \n             the correct region and language",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 35,
                ),
                const Icon(CupertinoIcons.flag_fill),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const flagscreen());
                  },
                  child: const Text(
                    "Select Region",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                Icon(Icons.chat),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Select Region",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const loadingscreen());
              },
              child: Container(
                height: Get.height * 0.055,
                width: Get.width * 0.35,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "CONFIRM",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
