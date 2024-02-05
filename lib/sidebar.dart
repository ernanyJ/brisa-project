import 'package:brisa_project/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/ContentController.dart';

Vcontroller vcontroller = Get.put(Vcontroller());

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          Expanded(
              flex: 32,
              child: Obx(() => vcontroller.pages[vcontroller.count.value])),
        ],
      ),
    );
  }

  Expanded SideBar() {
    var hoverColor = const Color.fromARGB(115, 105, 120, 202);

    return Expanded(
      flex: 1,
      child: Obx(
        () => Material(
          child: ListView(
            children: [
              Tooltip(
                message: "Home",
                child: ListTile(
                  hoverColor: hoverColor,
                  onTap: () => vcontroller.count.value = 0,
                  selected: vcontroller.count.value == 0,
                  contentPadding:
                      const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  leading: const Icon(Icons.home, size: 30),
                ),
              ),
              Tooltip(
                message: "Frota",
                child: ListTile(
                  hoverColor: hoverColor,
                  onTap: () => vcontroller.count.value = 1,
                  selected: vcontroller.count.value == 1,
                  contentPadding:
                      const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  leading: const Icon(
                    Icons.drive_eta,
                    size: 30,
                  ),
                ),
              ),
              Tooltip(
                message: "Motoristas",
                child: ListTile(
                  hoverColor: hoverColor,
                  onTap: () => vcontroller.count.value = 2,
                  selected: vcontroller.count.value == 2,
                  contentPadding:
                      const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  leading: const Icon(
                    Icons.person_2_rounded,
                    size: 30,
                  ),
                ),
              ),
              Tooltip(
                message: "Peças",
                child: ListTile(
                  hoverColor: hoverColor,
                  onTap: () => vcontroller.count.value = 0,
                  selected: vcontroller.count.value == 3,
                  contentPadding:
                      const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  leading: const Icon(
                    Icons.build_sharp,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
