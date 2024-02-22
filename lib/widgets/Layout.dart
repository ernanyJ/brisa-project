import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/ContentController.dart';
import 'Sidebar/SideBarFHD.dart';

Vcontroller vcontroller = Get.put(Vcontroller());

class Layout extends StatelessWidget {
  Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBarFHD(),
          Expanded(
              flex: 22,
              child: Obx(() => vcontroller.pages[vcontroller.count.value])),
        ],
      ),
    );
  }
}
