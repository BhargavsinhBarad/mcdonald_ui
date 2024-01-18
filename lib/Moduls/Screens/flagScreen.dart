import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdonald_ui/Moduls/utils/list.dart';

class flagscreen extends StatefulWidget {
  const flagscreen({super.key});

  @override
  State<flagscreen> createState() => _flagscreenState();
}

class _flagscreenState extends State<flagscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Region",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
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
                        child: Container(
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
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${e['name']}",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                              Divider()
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ));
  }
}
