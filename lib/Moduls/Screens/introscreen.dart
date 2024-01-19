import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mcdonald_ui/Moduls/Screens/homepage.dart';

class intro_page extends StatelessWidget {
  const intro_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Welcome to McDonald’s India West andvSouth",
              body:
                  "Location is key, we need to access your device’slocation so that we can show you the nearest restaurants and the most relevant offers for you ",
              image: Center(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.stepmap.com/map/West-and-South-India-1429671.png"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            PageViewModel(
              title: "Never miss a great deal!",
              body:
                  "We would like to send you a notification every now and then to let you know when exciting new offers are available ",
              image: Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.gifer.com/origin/06/06d3da7e7d8e8a51bfbdd2f34465e4d9.gif"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ],
          done: const Text("done"),
          onDone: () {
            Get.to(() => home());
          },
          next: const Text("Next"),
          showNextButton: true,
        ),
      ),
    );
  }
}
