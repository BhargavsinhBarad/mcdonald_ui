import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdonald_ui/Moduls/Screens/detailsscreen.dart';

import '../utils/list.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: Column(
          children: [
            Text(
              "LIGHTNING OFFERS,\nFULFILLING MEALS!",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              height: 200,
              width: 250,
              child: Image.asset(
                "lib/Assets/Image/otherimage/MC3.png",
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "Mexican McAloo\nTikki Regular Meal\nat Rs.129 only",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 230,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  crossAxisCount: 2,
                ),
                itemCount: meal.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(detailspage());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 15,
                            offset: Offset(0, 0),
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            blurRadius: 15,
                            offset: Offset(-8, -8),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            child: Image.asset(
                              "${meal[i]['image']}",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "${meal[i]['name']}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional.bottomStart,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "${meal[i]['price']}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
