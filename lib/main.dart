import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Moduls/Screens/splash_screens.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: splash(),
    ),
  );
}
