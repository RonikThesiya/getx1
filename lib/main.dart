import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/screens/home/view/home_screen.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(controller) => HomeScreen(),
      },
    )
  );
}