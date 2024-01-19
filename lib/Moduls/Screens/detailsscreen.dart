import 'package:flutter/material.dart';
import 'package:get/get.dart';

class detailspage extends StatelessWidget {
  const detailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.menu),
        ],
      ),
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.white,
              child: Image.asset(
                "lib/Assets/Image/otherimage/MC3.png",
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: Get.height * 0.05,
                ),
                const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Get Mexican McAloo Tikki\nRegular Meal at Rs.129",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.025),
                const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text("Grab this offer now"),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text("Requirements"),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.account_circle_outlined,
                      size: 42,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Login/Register",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    "lib/Assets/Image/otherimage/done.png"),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: Get.height * 0.06,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.refresh,
                      size: 44,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Repeating offer",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 135,
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    "lib/Assets/Image/otherimage/done.png"),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.08,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: GestureDetector(
                    onTap: () {
                      Get.bottomSheet(Container(
                        height: Get.height * 0.4,
                        width: double.infinity,
                        color: Colors.red,
                      ));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text(
                          "REDEEM",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
