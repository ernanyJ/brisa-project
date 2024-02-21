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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(vehicle.cor.value),
                  ),
                ),
                MouseRegion(
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
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    "Cor:",
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
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
                animation: true,
                lineHeight: 15.0,
                percent: 0.2,
                progressColor: Colors.deepPurple,
                backgroundColor: Color.fromARGB(221, 185, 157, 233),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
