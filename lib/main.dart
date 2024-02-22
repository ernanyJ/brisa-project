import 'package:brisa_project/widgets/Layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Brisa-Project",
      debugShowCheckedModeBanner: false,
      home: Layout(),
    );
  }
}
