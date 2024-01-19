import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdonald_ui/Moduls/utils/list.dart';

class flagscreen extends StatelessWidget {
  const flagscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Region",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [
            Icon(
              Icons.search_rounded,
              size: 30,
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: flag
                  .map((e) => GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset(
                                      "${e['image']}",
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "${e['name']}",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Divider()
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ));
  }
}
