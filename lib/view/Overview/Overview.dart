import 'package:brisa_project/constants/CarsColors.dart';
import 'package:brisa_project/widgets/ContentHandler.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    var isPressed = false.obs;
    RxInt currentOption = 0.obs;
    return Scaffold(
      body: Obx(
        () => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InfoCard(
                          context,
                          const Icon(
                            Icons.drive_eta,
                            size: 35,
                            color: Colors.white,
                          ),
                          "Veículos\ndisponíveis",
                          5),
                      FittedBox(
                        fit: BoxFit.fill,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            bottomInfoCard(
                              context,
                              const Color.fromARGB(255, 255, 193, 120),
                              null,
                              const Color.fromARGB(255, 255, 31, 0),
                            ),
                            const SizedBox(width: 30),
                            bottomInfoCard(
                              context,
                              const Color.fromARGB(255, 255, 0, 184),
                              null,
                              const Color.fromARGB(255, 78, 58, 118),
                            ),
                            const SizedBox(width: 22),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //
                const SizedBox(width: 50),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InfoCard(
                          context,
                          const Icon(
                            Icons.person,
                            size: 35,
                            color: Colors.white,
                          ),
                          "Motoristas\ndisponíveis",
                          5),
                      FittedBox(
                        fit: BoxFit.fill,
                        child: Row(
                          children: [
                            bottomInfoCard(
                              context,
                              const Color.fromARGB(255, 3, 111, 33),
                              null,
                              const Color.fromARGB(255, 25, 192, 61),
                            ),
                            const SizedBox(width: 20),
                            bottomInfoCard(
                              context,
                              const Color.fromARGB(255, 201, 137, 0),
                              const Color.fromARGB(255, 196, 137, 11),
                              const Color.fromARGB(255, 218, 174, 33),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            // Show infos

            const SizedBox(height: 30),

            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 223, 223),
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width - 200,
              height: MediaQuery.of(context).size.height - 304,
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 42, 111, 231),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            currentOption.value = 0;
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: currentOption.value == 0
                                  ? const Color.fromARGB(255, 38, 66, 116)
                                  : const Color.fromARGB(255, 42, 111, 231),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10)),
                            ),
                            height: MediaQuery.of(context).size.height,
                            width: 200,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Veículos",
                                style: GoogleFonts.openSans(
                                  textStyle: const TextStyle(height: 0.9),
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            currentOption.value = 1;
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: currentOption.value == 1
                                  ? const Color.fromARGB(255, 38, 66, 116)
                                  : const Color.fromARGB(255, 42, 111, 231),
                            ),
                            height: MediaQuery.of(context).size.height,
                            width: 200,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Motoristas",
                                style: GoogleFonts.openSans(
                                  textStyle: const TextStyle(height: 0.9),
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            currentOption.value = 2;
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: currentOption.value == 2
                                  ? const Color.fromARGB(255, 38, 66, 116)
                                  : const Color.fromARGB(255, 42, 111, 231),
                            ),
                            height: MediaQuery.of(context).size.height,
                            width: 200,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Viagens",
                                style: GoogleFonts.openSans(
                                  textStyle: const TextStyle(height: 0.9),
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: ContentHandler(
                    currentOption: currentOption.value,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container InfoCard(context, Icon icon, String text, int number) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          Color.fromARGB(255, 100, 27, 217),
          Color.fromARGB(255, 42, 24, 143),
        ]),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(73, 0, 0, 0),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      width: screenWidth * 0.4,
      height: 89,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            // Leading icon
            icon,

            const SizedBox(
              width: 5,
            ),
            // Main text
            Text(
              text,
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(height: 0.1),
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  height: 1),
            ),
            const SizedBox(
              width: 190,
            ),
            // Number
            Text(
              "$number",
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}

Container bottomInfoCard(context, Color color1, Color? medium, Color color2) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        colors: [
          color1,
          color2,
        ],
      ),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(73, 0, 0, 0),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    ),
    margin: const EdgeInsets.only(top: 20, left: 20),
    height: 139.47,
    width: MediaQuery.of(context).size.width * 0.190,
    child: FittedBox(
      fit: BoxFit.fitWidth,
      child: Row(
        children: [
          const Column(
            children: [
              Icon(
                Icons.car_repair_sharp,
                size: 85,
                color: Colors.white,
              ),
              SizedBox(height: 40),
            ],
          ),
          Column(
            children: [
              Text(
                "Veículos\np/ Manutenção",
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(height: 0.9),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          const Column(
            children: [
              SizedBox(height: 70),
              Text(
                "2",
                style: TextStyle(
                  color: colorWhite,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    ),
  );
}
