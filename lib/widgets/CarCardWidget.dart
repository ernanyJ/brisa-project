import 'package:brisa_project/constants/CarsColors.dart';
import 'package:brisa_project/models/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CarCard extends StatelessWidget {
  void setImageScale() {}
  Vehicle vehicle;
  late String image;

  CarCard({super.key, required this.vehicle, required String? image});

  CarCard.withImage(this.vehicle, this.image);

  @override
  Widget build(BuildContext context) {
    var scale = 1.3.obs;
    return Obx(
      () => Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(242, 255, 255, 255),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: MediaQuery.of(context).size.width,
                  height: scale.value == 1.3 ? 1 * 110 : 1 * 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 209, 209, 209),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(143, 73, 73, 73),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (_) {
                    scale.value = 1.2;
                  },
                  onExit: (_) {
                    scale.value = 1.3;
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(image, scale: scale.value),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 140, left: 10),
                      child: Text(
                        vehicle.modelo,
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: vehicle.disponivel
                            ? const Color.fromARGB(255, 44, 172, 48)
                            : const Color.fromARGB(255, 224, 81, 71),
                      ),
                      margin: const EdgeInsets.only(top: 140, left: 10),
                      width: 10,
                      height: 10,
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 165, left: 10),
                  child: Text(
                    "Placa: ${vehicle.placa}",
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Combustível:",
                style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: LinearPercentIndicator(
                barRadius: const Radius.circular(5),
                center: const Text(
                  "20 %",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
                animation: true,
                lineHeight: 15.0,
                percent: 0.2,
                progressColor: const Color.fromARGB(255, 38, 202, 66),
                backgroundColor: const Color.fromARGB(255, 51, 73, 55),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
