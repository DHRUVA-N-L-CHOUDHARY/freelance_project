import 'package:flutter/material.dart';
import 'package:freelance_project/screens/Edit_details_screen.dart';
import 'package:freelance_project/screens/Edt_profile_page.dart';
import 'package:freelance_project/screens/My_designs_screen.dart';
import 'package:freelance_project/screens/Profile_page.dart';
import 'package:freelance_project/screens/Splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EditDetailsScreen()
    );
  }
}

